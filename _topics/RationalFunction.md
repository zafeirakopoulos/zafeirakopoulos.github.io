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
areas: [algebra]
urgency: 5
---

A **rational function** is a ratio $$r = P/Q$$ where $$P, Q \in \mathbb{Z}[x_1,\ldots,x_n]$$ are multivariate polynomials. Rational functions are the natural output of Polyhedral Omega, Barvinok's algorithm, and many combinatorial counting methods: the generating function

$$\sum_{k\geq 0} f(k)\,z^k = \frac{P(z)}{Q(z)}$$

encodes a sequence $$f(k)$$ (e.g., the number of integer points in a scaled polytope) as a ratio of polynomials.

Efficient arithmetic on these objects — addition, multiplication, reduction to lowest terms — is a bottleneck in large-scale computations.

## Core operations

**Canonical form.** A rational function $$P/Q$$ is in canonical form when $$\gcd(P,Q)=1$$. Computing $$\gcd$$ of multivariate polynomials requires a subresultant or modular GCD algorithm and is the dominant cost.

**Addition.** $$\dfrac{P_1}{Q_1} + \dfrac{P_2}{Q_2} = \dfrac{P_1 Q_2 + P_2 Q_1}{Q_1 Q_2}$$, followed by GCD reduction. Computing $$\gcd(Q_1,Q_2)$$ first gives a smaller common denominator and avoids unnecessary coefficient growth.

**Partial fractions.** Decompose $$P(z)/Q(z)$$ into a sum of simpler fractions with irreducible-power denominators. Used to extract specific coefficients $$[z^k]P/Q$$ as closed-form expressions. See also the [Partial Fraction Decomposition](/topics/partialfraction/) topic.

## Sparse representation

Combinatorial generating functions are typically **sparse**: their numerators and denominators have far fewer nonzero terms than the dense worst case. A sparse representation — storing only nonzero monomials in a hash map or sorted list — dramatically reduces memory and computation. The challenge is avoiding quadratic blowup when multiplying two sparse polynomials with overlapping support.

## Goal

Survey sparse multivariate polynomial representations, implement core rational function arithmetic (add, multiply, GCD-based reduce), and benchmark against existing CAS tools.

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

## References

1. A. I. Barvinok. _A Polynomial Time Algorithm for Counting Integral Points in Polyhedra When the Dimension is Fixed._
   **Mathematics of Operations Research**, 19(4):769–779, 1994.
   [DOI 10.1287/moor.19.4.769](https://doi.org/10.1287/moor.19.4.769)

2. M. Köppe and S. Verdoolaege. _Computing Parametric Rational Generating Functions with a Primal Barvinok Algorithm._
   **Electronic Journal of Combinatorics**, 15(1), 2008.
   [combinatorics.org](http://www.combinatorics.org/Volume_15/Abstracts/v15i1r16.html)
