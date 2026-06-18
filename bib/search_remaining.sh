#!/usr/bin/env bash
# Run this script to fetch DBLP BibTeX for any additional verified papers.
# All entries below have been confirmed to exist in DBLP.
# Usage: bash bib/search_remaining.sh

set -e
BIB_DIR="$(dirname "$0")"

fetch_bib() {
  local key="$1"
  local file="$BIB_DIR/${key##*/}.bib"
  if [ -f "$file" ]; then
    echo "Already have: $file"
    return
  fi
  echo "Fetching: $key"
  curl -sf "https://dblp.org/rec/$key.bib" -o "$file" && echo "  -> $file" || echo "  FAILED: $key"
  sleep 0.5
}

# Real solving
fetch_bib "journals/jsc/SagraloffM16"
fetch_bib "conf/issac/CollinsA76"

# Interpolation
fetch_bib "conf/stoc/Ben-OrT88"

# Optimization / PO
fetch_bib "journals/mor/Barvinok94"
fetch_bib "journals/algorithmica/VerdoolaegeSBLB07"
fetch_bib "journals/combinatorics/KoppeV08"

# ML for mathematics
fetch_bib "conf/iclr/LampleC20"

echo ""
echo "Done. Files in $BIB_DIR:"
ls -1 "$BIB_DIR"/*.bib
