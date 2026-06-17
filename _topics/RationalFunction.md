---
layout: topic
title: Rational Function Arithmetic
description: Efficient arithmetic on multivariate rational functions arising in generating function computations.
img:
importance: 3
category: topics
related_publications: false
difficulty: normal
level: [master]
content: [algebra]
urgency: 5
---

Rational functions are a core data structure in symbolic computation for generating functions, partial fraction decompositions, and algorithmic enumeration.
The goal is to develop efficient arithmetic algorithms and implementations for multivariate rational functions.

- Repo: [alcyon-ratfun.jl](https://github.com/alcyon-lab/alcyon-ratfun.jl)

## Milestones

| ID  | Title                              | Due        |
| --- | ---------------------------------- | ---------- |
| M1  | Data structures survey & prototype | 2025-11-25 |
| M2  | Core arithmetic (add, mul, reduce) | 2025-12-20 |
| M3  | Partial fraction decomposition     | 2026-01-30 |
| M4  | Benchmarks & final report          | 2026-02-28 |

## Tasks

| ID  | Title                                      | Start      | End        | Status |
| --- | ------------------------------------------ | ---------- | ---------- | ------ |
| T1  | Survey sparse multivariate representations | 2025-11-05 | 2025-11-25 | todo   |
| T2  | Implement multiplication kernels           | 2025-11-26 | 2025-12-20 | todo   |
| T3  | Sparse partial fraction pipeline           | 2025-12-21 | 2026-01-30 | todo   |
| T4  | Benchmarks + write-up                      | 2026-01-31 | 2026-02-28 | todo   |

## Deliverables

- Julia package with tests
- Benchmark against existing tools
- Short report (6–8 pages)
