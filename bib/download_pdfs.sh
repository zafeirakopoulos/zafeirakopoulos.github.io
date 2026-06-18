#!/usr/bin/env bash
# Download PDFs for all papers in bib/.
# Uses Unpaywall (free, legal open-access resolver) for DOI-based lookup,
# with hard-coded fallbacks for known open-access URLs.
# Usage: bash bib/download_pdfs.sh

set -euo pipefail
BIB_DIR="$(cd "$(dirname "$0")" && pwd)"
EMAIL="zafeirakopoulos@gmail.com"

download_pdf() {
  local key="$1"   # filename stem, e.g. Barvinok94
  local doi="$2"   # e.g. 10.1287/MOOR.19.4.769
  local fallback="${3:-}"  # direct PDF URL if known

  local out="$BIB_DIR/${key}.pdf"
  if [ -f "$out" ]; then
    echo "  [skip] $key.pdf already exists"
    return
  fi

  echo "=== $key ==="

  # Try Unpaywall first
  local pdf_url=""
  if [ -n "$doi" ]; then
    pdf_url=$(curl -sf "https://api.unpaywall.org/v2/${doi}?email=${EMAIL}" \
      | python3 -c "
import sys, json
try:
    d = json.load(sys.stdin)
    loc = d.get('best_oa_location') or {}
    print(loc.get('url_for_pdf') or loc.get('url') or '')
except Exception:
    pass
" 2>/dev/null || true)
  fi

  # Use fallback if Unpaywall found nothing
  if [ -z "$pdf_url" ] && [ -n "$fallback" ]; then
    pdf_url="$fallback"
  fi

  if [ -z "$pdf_url" ]; then
    echo "  [warn] No open-access PDF found for $key (DOI: $doi)"
    return
  fi

  echo "  Downloading from: $pdf_url"
  if curl -sfL "$pdf_url" -o "$out" --max-time 60; then
    # Sanity-check: PDF magic bytes
    if file "$out" | grep -qi pdf; then
      echo "  [ok] Saved $key.pdf ($(du -h "$out" | cut -f1))"
    else
      echo "  [warn] Downloaded file for $key does not look like a PDF — removing"
      rm -f "$out"
    fi
  else
    echo "  [fail] Download failed for $key"
    rm -f "$out"
  fi

  sleep 0.5
}

# ---- Papers ----------------------------------------------------------------
# key              DOI (lowercase)                           fallback PDF URL
download_pdf "Zippel79" \
  "10.1007/3-540-09519-5_73" \
  ""

download_pdf "Ben-OrT88" \
  "10.1145/62212.62241" \
  ""

download_pdf "CollinsA76" \
  "10.1145/800205.806346" \
  ""

download_pdf "Barvinok94" \
  "10.1287/moor.19.4.769" \
  ""

download_pdf "VerdoolaegeSBLB07" \
  "10.1007/s00453-006-1231-0" \
  ""

download_pdf "KoppeV08" \
  "" \
  "https://www.combinatorics.org/ojs/index.php/eljc/article/download/v15i1r16/pdf"

download_pdf "SagraloffM16" \
  "10.1016/j.jsc.2015.03.004" \
  "https://arxiv.org/pdf/1501.01800"

download_pdf "LampleC20" \
  "" \
  "https://openreview.net/pdf?id=S1eZYeHFDS"

# CFArithmetic refs (no DOI-based OA, but direct links)
download_pdf "Vuillemin1990" \
  "10.1109/12.57047" \
  ""

download_pdf "EdalatPotts1997" \
  "10.1016/S1571-0661(05)80166-5" \
  ""

download_pdf "Niqui2007" \
  "10.1016/j.jda.2005.03.007" \
  ""

echo ""
echo "Done. PDFs in $BIB_DIR:"
ls -lh "$BIB_DIR"/*.pdf 2>/dev/null || echo "  (none downloaded)"
