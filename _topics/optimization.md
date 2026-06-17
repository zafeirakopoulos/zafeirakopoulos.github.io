---
layout: topic
title: Optimization via Polyhedral Omega
description: Use PO-based exact counting/enumeration to design exact and hybrid optimization methods for integer programs.
img:
importance: 4
category: topics
related_publications: false
difficulty: difficult
level: [master, phd]
content: [optimization, combinatorics]
urgency: 7
---

**Goal:** Bridge PO-based exact counting with optimization — solve or accelerate ILPs and structured integer programs using information extracted by Polyhedral Omega.

## Threads

1. PO → objective bounds for knapsack-like families
2. PO-informed cutting planes
3. Hybrid methods with classical solvers

## Plan

```mermaid
gantt
  title Optimization via PO — Semester Plan
  dateFormat  YYYY-MM-DD
  axisFormat  %b %d
  section Foundations
  PO refresher + LDS review    :done,   s1, 2025-11-01, 2025-11-07
  Small PO demos on toy ILPs   :active, s2, 2025-11-08, 2025-11-22
  section Methods
  Bounds from counting         :        s3, 2025-11-23, 2025-12-20
  PO → cutting planes          :        s4, 2025-12-21, 2026-01-25
  section Evaluation
  Benchmarks & ablations       :        s5, 2026-01-26, 2026-03-05
  Write-up & release           :        s6, 2026-03-06, 2026-03-31
```
