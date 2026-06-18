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

We explore how machine learning methods can be applied to mathematical objects (polynomials, polytopes, integer programs) to improve algorithmic performance or guide the discovery of new mathematical structure.

## Directions

**Symbolic computation via transformers.** Lample & Charton (2020) showed that sequence-to-sequence models trained on large datasets of symbolic expressions can solve integration problems and first-order ODEs at competitive speed. This raises the question: which algebraic operations admit efficient neural approximations, and how do they compare to exact methods?

**Learning heuristics for combinatorial algorithms.** Branch-and-bound solvers, Gröbner basis computations, and root isolation all involve choices (branching, term ordering, subdivision strategy) that are NP-hard to optimize globally but may admit learned heuristics.

**Data-driven conjecture discovery.** Recent work in algebraic combinatorics uses ML to identify patterns in tabulated data (e.g., Ehrhart polynomials, generating function coefficients) that lead to new conjectures.

## Starting point

Replicate the Lample–Charton integration experiment on a small dataset of rational function integrals, then explore whether a similar approach works for polynomial GCD or root isolation sub-problems.

## Milestones

| ID  | Title                                   | Due        |
| --- | --------------------------------------- | ---------- |
| M1  | Replicate Lample–Charton on toy dataset | 2025-11-25 |
| M2  | Formulate algebraic task as seq2seq     | 2025-12-20 |
| M3  | Benchmark suite + analysis              | 2026-01-30 |
| M4  | Final report & release                  | 2026-02-28 |

## Tasks

| ID  | Title                                      | Start      | End        | Status |
| --- | ------------------------------------------ | ---------- | ---------- | ------ |
| T1  | Replicate Lample–Charton experiment        | 2025-11-05 | 2025-11-25 | todo   |
| T2  | Design algebraic ML task                   | 2025-11-26 | 2025-12-20 | todo   |
| T3  | Train, evaluate, compare to exact solver   | 2025-12-21 | 2026-01-30 | todo   |
| T4  | Ablations + write-up                       | 2026-01-31 | 2026-02-28 | todo   |

## Deliverables

- Trained model + evaluation code
- Comparison vs. exact symbolic solver
- Report with analysis

## References

1. G. Lample and F. Charton. _Deep Learning For Symbolic Mathematics._
   ICLR 2020, OpenReview.net.
   [openreview.net/forum?id=S1eZYeHFDS](https://openreview.net/forum?id=S1eZYeHFDS)
