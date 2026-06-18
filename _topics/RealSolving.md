---
layout: topic
title: Real Solving
description: Study and implement algorithms for isolating the real roots of univariate integer polynomials.
img:
importance: 3
category: topics
related_publications: false
difficulty: normal
level: [undergrad, master]
content: [algebra]
urgency: 5
---

**Real root isolation** is the problem of computing, for a polynomial $$f \in \mathbb{Z}[x]$$, a list of pairwise disjoint intervals with rational endpoints such that each interval contains exactly one real root of $$f$$ and every real root is covered.

This is a core primitive in symbolic computation: it underlies factoring over $$\mathbb{Q}$$, quantifier elimination via CAD, and solving multivariate systems.

## Key ideas

**Descartes' rule of signs** says the number of positive real roots of $$f$$ (counted with multiplicity) is at most the number of sign changes in the coefficient sequence, and differs from it by an even number. This gives a cheap upper bound that drives modern algorithms.

**Collins–Akritas bisection (1976)** works by tracking coefficient sign changes under the Möbius transformation
$$f(x) \mapsto (1+x)^{\deg f}\,f\!\left(\tfrac{x+a}{x+b}\right)$$
and bisecting whenever a subinterval still has more than one sign change. The algorithm terminates because the Mahler measure of $$f$$ bounds the minimum distance between roots.

**Sagraloff–Mehlhorn (2016)** refines this with a complexity-optimal strategy: they combine a Descartes-based bisection with Newton refinement, achieving bit complexity $$\tilde{O}(n^2\tau)$$ (nearly matching the information-theoretic lower bound), where $$n = \deg f$$ and $$\tau$$ is the coefficient bit size.

## Goal

Study the Collins–Akritas algorithm in detail (correctness proof, termination, complexity), implement it, and compare experimentally with alternative solvers.

## Milestones

| ID  | Title                                   | Due        |
| --- | --------------------------------------- | ---------- |
| M1  | Understand Descartes rule + termination | 2025-12-01 |
| M2  | Implement Collins–Akritas               | 2026-01-15 |
| M3  | Benchmark vs. other isolators           | 2026-02-20 |
| M4  | Final report                            | 2026-03-10 |

## References

1. G. E. Collins and A. G. Akritas. _Polynomial real root isolation using Descartes' rule of signs._
   SYMSAC 1976, pp. 272–275, ACM.
   [DOI 10.1145/800205.806346](https://doi.org/10.1145/800205.806346)

2. M. Sagraloff and K. Mehlhorn. _Computing real roots of real polynomials._
   **Journal of Symbolic Computation**, 73:46–86, 2016.
   [DOI 10.1016/j.jsc.2015.03.004](https://doi.org/10.1016/j.jsc.2015.03.004)

3. Z. Zafeirakopoulos. _Study and Benchmarks for Real Root Isolation Methods._
   Master's thesis, 2008.

4. M. Hemmer, E. Tsigaridas, Z. Zafeirakopoulos, et al. _Experimental evaluation and cross-benchmarking of univariate real solvers._
   SNC 2009, ACM.
