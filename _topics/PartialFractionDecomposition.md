---
layout: topic
title: Partial Fraction Decomposition
description: Study and implement algorithms for partial fraction decomposition of rational functions, with applications to coefficient extraction from generating functions.
img:
importance: 3
category: topics
related_publications: false
difficulty: normal
level: [master]
areas: [algebra]
urgency: 6
---

**Partial fraction decomposition** (PFD) rewrites a rational function $$P(z)/Q(z)$$ as a sum of simpler fractions whose denominators are powers of irreducible factors of $$Q$$:

$$\frac{P(z)}{Q(z)} = \text{poly}(z) + \sum_{i} \sum_{j=1}^{e_i} \frac{A_{ij}}{(z - \alpha_i)^j}$$

where $$Q(z) = \prod_i (z - \alpha_i)^{e_i}$$ over the splitting field.

## Why it matters

PFD is a key computational step whenever one needs to **extract a specific coefficient** from a rational generating function — exactly the problem that arises after running Barvinok's algorithm or Polyhedral Omega.

If $$f(k) = [z^k]\, P(z)/Q(z)$$, the PFD converts this coefficient extraction into a sum of geometric progressions:

$$[z^k]\frac{A}{(z - \alpha)^j} = A \cdot \binom{k+j-1}{j-1} \cdot \alpha^{-(k+j)}$$

This gives a closed-form formula for any specific $$k$$.

## Algorithms

**Hermite reduction** first separates $$P/Q$$ into a polynomial part plus a proper fraction with squarefree denominator, using extended GCD of $$Q$$ and $$Q'$$.

**Squarefree decomposition + splitting.** Factor $$Q = \prod Q_i^{e_i}$$ into squarefree parts using GCD-based algorithms, then apply the Chinese Remainder Theorem to split the numerator across factors.

**Modular PFD.** Work over $$\mathbb{Z}_p$$ for a prime $$p$$ and lift using Hensel's lemma. Avoids coefficient swell in intermediate computations.

## Multivariate case

For $$P(\mathbf{x})/Q(\mathbf{x})$$ with several variables the story is more complex: one must choose a **distinguished variable** and perform PFD with respect to it, treating the others as parameters. The result depends on the choice, and different choices are useful for different downstream tasks (residue computation vs. diagonal extraction).

## Goal

Implement univariate PFD over $$\mathbb{Q}$$, verify against known generating functions from combinatorics, and extend to the multivariate case for at least one variable specialization.

- Repo: [alcyon-ratfun.jl](https://github.com/alcyon-lab/alcyon-ratfun.jl)

## Milestones

| ID  | Title                                 | Due        |
| --- | ------------------------------------- | ---------- |
| M1  | Squarefree decomposition & Hermite    | 2025-12-10 |
| M2  | Univariate PFD over $$\mathbb{Q}$$    | 2026-01-15 |
| M3  | Coefficient extraction & benchmarks   | 2026-02-10 |
| M4  | Multivariate extension & final report | 2026-03-01 |

## Tasks

| ID  | Title                              | Start      | End        | Status |
| --- | ---------------------------------- | ---------- | ---------- | ------ |
| T1  | Implement squarefree decomposition | 2025-11-10 | 2025-12-10 | todo   |
| T2  | Univariate PFD (CRT-based)         | 2025-12-11 | 2026-01-15 | todo   |
| T3  | Coefficient extraction from PFD    | 2026-01-16 | 2026-02-10 | todo   |
| T4  | Multivariate PFD + write-up        | 2026-02-11 | 2026-03-01 | todo   |

## Deliverables

- Julia package with tests
- Benchmark on generating functions from Polyhedral Omega output
- Short report (6–8 pages)

## References

1. A. I. Barvinok. _A Polynomial Time Algorithm for Counting Integral Points in Polyhedra When the Dimension is Fixed._
   **Mathematics of Operations Research**, 19(4):769–779, 1994.
   [DOI 10.1287/moor.19.4.769](https://doi.org/10.1287/moor.19.4.769)

2. M. Köppe and S. Verdoolaege. _Computing Parametric Rational Generating Functions with a Primal Barvinok Algorithm._
   **Electronic Journal of Combinatorics**, 15(1), 2008.
   [combinatorics.org](http://www.combinatorics.org/Volume_15/Abstracts/v15i1r16.html)
