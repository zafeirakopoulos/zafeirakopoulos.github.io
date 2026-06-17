---
layout: topic
title: PO-derived Bounds for Knapsack Families
description: Study bounds on knapsack-type integer programs derived from Polyhedral Omega counting and compare to branch-and-bound.
img:
importance: 4
category: topics
related_publications: false
difficulty: normal
level: [master]
content: [optimization, combinatorics]
urgency: 6
---

We study how Polyhedral Omega (PO) counting over parametric families can be used to derive tight bounds for knapsack-type ILPs, and benchmark these bounds against classical branch-and-bound solvers.

- Repo: [po-bounds-knapsack](https://github.com/alcyon/po-bounds-knapsack)

## Milestones

| ID  | Title                                 | Due        |
| --- | ------------------------------------- | ---------- |
| M1  | Replicate PO counting on toy knapsack | 2025-11-25 |
| M2  | Bound extraction & correctness tests  | 2025-12-20 |
| M3  | Benchmark suite + analysis            | 2026-01-30 |
| M4  | Final report & release                | 2026-02-28 |

## Tasks

| ID  | Title                                      | Start      | End        | Status |
| --- | ------------------------------------------ | ---------- | ---------- | ------ |
| T1  | Implement counting for parametric families | 2025-11-05 | 2025-11-25 | todo   |
| T2  | Extract bounds from generating functions   | 2025-11-26 | 2025-12-20 | todo   |
| T3  | Benchmark vs. B&B across sizes             | 2025-12-21 | 2026-01-30 | todo   |
| T4  | Ablations + write-up                       | 2026-01-31 | 2026-02-28 | todo   |

## Deliverables

- PO-bound computation module
- Benchmark across parametric families
- Report with comparisons vs. branch-and-bound
