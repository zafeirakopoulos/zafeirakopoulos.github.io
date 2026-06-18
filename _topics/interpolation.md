---
layout: topic
title: Interpolation
description: Study and implement sparse polynomial interpolation algorithms.
img:
importance: 3
category: topics
related_publications: false
difficulty: normal
level: [master]
content: [algebra]
urgency: 6
---

**Sparse polynomial interpolation** recovers a multivariate polynomial from a small number of evaluations, exploiting the fact that the polynomial has few nonzero terms relative to its degree.

A dense polynomial $$f \in \mathbb{Z}[x_1,\ldots,x_n]$$ of degree $$d$$ has up to $$\binom{n+d}{d}$$ terms — exponential in $$n$$. If $$f$$ has only $$t \ll \binom{n+d}{d}$$ nonzero terms, a sparse algorithm recovers it using only $$O(nt)$$ evaluations, making the computation feasible in high dimension.

## Zippel's probabilistic algorithm (1979)

Zippel's algorithm evaluates $$f$$ at random points chosen independently for each variable, uses univariate interpolation to recover each coefficient one variable at a time, and repeats. It is probabilistic (fails with small probability over the choice of random points) but practical and widely used in CAS implementations.

## Ben-Or–Tiwari algorithm (1988)

The key idea: evaluate $$f$$ at the geometric progression $$(\alpha^0, \alpha^1, \alpha^2, \ldots)$$ for a carefully chosen base $$\alpha$$, then use the **Berlekamp–Massey algorithm** to recover a linear recurrence satisfied by the evaluation sequence. The roots of the recurrence characteristic polynomial encode the monomials of $$f$$; the coefficients follow by solving a Vandermonde system.

Formally, evaluating at $$\mathbf{x} = (\beta^{e_1},\ldots,\beta^{e_n})$$ for a primitive root $$\beta$$ modulo a sufficiently large prime maps each monomial $$\mathbf{x}^\alpha = x_1^{\alpha_1}\cdots x_n^{\alpha_n}$$ to a distinct integer $$\beta^{\alpha_1 e_1 + \cdots + \alpha_n e_n}$$, so the problem reduces to univariate root finding.

**Complexity:** $$O(t^2 n)$$ evaluations (deterministic version), or $$O(tn\log d)$$ with randomization.

## Goal

Understand the Ben-Or–Tiwari algorithm (correctness, complexity), implement it in Julia (see repo below), and explore probabilistic variants with improved complexity.

- Repo: [alcyon-interpolation.jl](https://github.com/alcyon-lab/alcyon-interpolation.jl)

## Milestones

| ID  | Title                              | Due        |
| --- | ---------------------------------- | ---------- |
| M1  | Literature review & demo prototype | 2025-12-10 |
| M2  | Core implementation complete       | 2026-01-20 |
| M3  | Experiments & analysis             | 2026-02-25 |
| M4  | Final report & release             | 2026-03-01 |

## Tasks

| ID  | Title                             | Start      | End        | Status |
| --- | --------------------------------- | ---------- | ---------- | ------ |
| T1  | Minimal demo on toy instance      | 2025-11-08 | 2025-11-20 | todo   |
| T2  | Core Ben-Or–Tiwari implementation | 2025-11-21 | 2025-12-15 | todo   |
| T3  | Structured/sparse extensions      | 2025-12-16 | 2026-01-20 | todo   |
| T4  | Benchmark + write-up              | 2026-01-21 | 2026-02-25 | todo   |

## Deliverables

- Julia package with tests
- Reproducible benchmarks
- Short report (6–8 pages)

## References

1. R. Zippel. _Probabilistic algorithms for sparse polynomials._
   EUROSAM 1979, Lecture Notes in Computer Science 72, pp. 216–226, Springer.
   [DOI 10.1007/3-540-09519-5_73](https://doi.org/10.1007/3-540-09519-5_73)

2. M. Ben-Or and P. Tiwari. _A Deterministic Algorithm for Sparse Multivariate Polynomial Interpolation._
   STOC 1988, pp. 301–309, ACM.
   [DOI 10.1145/62212.62241](https://doi.org/10.1145/62212.62241)
