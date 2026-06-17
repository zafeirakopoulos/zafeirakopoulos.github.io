---
layout: topic
title: Machine Learning for Mathematics
description: Apply machine learning techniques to mathematical objects such as polynomials and polytopes.
img:
importance: 4
category: topics
related_publications: false
difficulty: normal
level: [master, phd]
content: [optimization, algebra]
urgency: 5
---

We explore how machine learning methods can be applied to mathematical objects (polynomials, polytopes, integer programs) to improve algorithmic performance or discover new structure.

- Repo: [alcyon-ratfun.jl](https://github.com/alcyon-lab/alcyon-ratfun.jl)

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
