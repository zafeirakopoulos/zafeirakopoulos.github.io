---
layout: page
permalink: /benchmarks/
title: Benchmarks
description: Univariate polynomial real root isolation — average times in ms
nav: false
pretty_table: true
---

Benchmarks comparing real root isolation methods for univariate polynomials.
Data source: [symbolic-computation.info](https://github.com/zafeirakopoulos/symbolic-computation.info/tree/master/benchmarks/univariate).
Times are averages in milliseconds over multiple instances.

**Methods:** ST = Sturm, SV = Sleeve, SN = Symbolic Numeric, CF, NCF, NCF2, D = Descartes, BD = Bitstream Descartes, RS

---

<div class="row mb-3 g-2">
  <div class="col-auto">
    <label for="filter-type" class="col-form-label">Type</label>
  </div>
  <div class="col-auto">
    <select id="filter-type" class="form-select form-select-sm">
      <option value="">All</option>
    </select>
  </div>
  <div class="col-auto">
    <label for="filter-source" class="col-form-label">Source</label>
  </div>
  <div class="col-auto">
    <select id="filter-source" class="form-select form-select-sm">
      <option value="">All</option>
    </select>
  </div>
  <div class="col-auto">
    <label for="filter-degree" class="col-form-label">Degree</label>
  </div>
  <div class="col-auto">
    <select id="filter-degree" class="form-select form-select-sm">
      <option value="">All</option>
    </select>
  </div>
  <div class="col-auto">
    <label for="filter-bitsize" class="col-form-label">Bitsize</label>
  </div>
  <div class="col-auto">
    <select id="filter-bitsize" class="form-select form-select-sm">
      <option value="">All</option>
    </select>
  </div>
</div>

<table
  id="bench-table"
  data-toggle="table"
  data-sortable="true"
  data-sort-order="asc"
  data-sort-name="degree"
  data-classes="table table-bordered table-sm"
  data-thead-classes="table-dark"
>
  <thead>
    <tr>
      <th data-field="source" data-sortable="true">Source</th>
      <th data-field="type" data-sortable="true">Type</th>
      <th data-field="degree" data-sortable="true">Degree</th>
      <th data-field="bitsize" data-sortable="true">Bitsize</th>
      <th data-field="ST" data-sortable="true">ST</th>
      <th data-field="SV" data-sortable="true">SV</th>
      <th data-field="SN" data-sortable="true">SN</th>
      <th data-field="CF" data-sortable="true">CF</th>
      <th data-field="NCF" data-sortable="true">NCF</th>
      <th data-field="NCF2" data-sortable="true">NCF2</th>
      <th data-field="D" data-sortable="true">D</th>
      <th data-field="BD" data-sortable="true">BD</th>
      <th data-field="RS" data-sortable="true">RS</th>
    </tr>
  </thead>
  <tbody id="bench-tbody"></tbody>
</table>

<script>
  (function () {
    var allData = [];

    function fmt(v) {
      return v === null || v === undefined ? "—" : v;
    }

    function render(data) {
      var tbody = document.getElementById("bench-tbody");
      tbody.innerHTML = data
        .map(function (r) {
          return (
            "<tr>" +
            "<td>" +
            r.source +
            "</td>" +
            "<td>" +
            r.type +
            "</td>" +
            "<td>" +
            r.degree +
            "</td>" +
            "<td>" +
            r.bitsize +
            "</td>" +
            "<td>" +
            fmt(r.ST) +
            "</td>" +
            "<td>" +
            fmt(r.SV) +
            "</td>" +
            "<td>" +
            fmt(r.SN) +
            "</td>" +
            "<td>" +
            fmt(r.CF) +
            "</td>" +
            "<td>" +
            fmt(r.NCF) +
            "</td>" +
            "<td>" +
            fmt(r.NCF2) +
            "</td>" +
            "<td>" +
            fmt(r.D) +
            "</td>" +
            "<td>" +
            fmt(r.BD) +
            "</td>" +
            "<td>" +
            fmt(r.RS) +
            "</td>" +
            "</tr>"
          );
        })
        .join("");
      if (typeof $("#bench-table").bootstrapTable === "function") {
        $("#bench-table").bootstrapTable("load", data);
      }
    }

    function applyFilters() {
      var type = document.getElementById("filter-type").value;
      var source = document.getElementById("filter-source").value;
      var degree = document.getElementById("filter-degree").value;
      var bitsize = document.getElementById("filter-bitsize").value;
      var filtered = allData.filter(function (r) {
        return (
          (!type || r.type === type) &&
          (!source || r.source === source) &&
          (!degree || String(r.degree) === degree) &&
          (!bitsize || String(r.bitsize) === bitsize)
        );
      });
      render(filtered);
    }

    function populate(sel, values) {
      values.forEach(function (v) {
        var o = document.createElement("option");
        o.value = v;
        o.textContent = v;
        sel.appendChild(o);
      });
    }

    fetch("{{ '/assets/json/benchmarks_univariate.json' | relative_url }}")
      .then(function (r) {
        return r.json();
      })
      .then(function (data) {
        allData = data;
        populate(
          document.getElementById("filter-type"),
          [...new Set(data.map((r) => r.type))].sort(),
        );
        populate(
          document.getElementById("filter-source"),
          [...new Set(data.map((r) => r.source))].sort(),
        );
        populate(
          document.getElementById("filter-degree"),
          [...new Set(data.map((r) => r.degree))]
            .sort((a, b) => a - b)
            .map(String),
        );
        populate(
          document.getElementById("filter-bitsize"),
          [...new Set(data.map((r) => r.bitsize))]
            .sort((a, b) => a - b)
            .map(String),
        );
        render(data);
        ["filter-type", "filter-source", "filter-degree", "filter-bitsize"].forEach(function (id) {
          document.getElementById(id).addEventListener("change", applyFilters);
        });
      });
  })();
</script>
