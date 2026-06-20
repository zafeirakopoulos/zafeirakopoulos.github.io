---
layout: topic
title: Polynomial GCD Algorithms
description: Implement and benchmark Euclidean, subresultant, and modular GCD algorithms for univariate and multivariate polynomials.
img:
importance: 5
category: topics
related_publications: false
difficulty: normal
level: [undergrad, master]
areas: [algebra]
urgency: 4
---

The **greatest common divisor** of two polynomials $$f, g \in \mathbb{Z}[x]$$ is the monic polynomial of largest degree that divides both. GCD computation is the central bottleneck in rational function arithmetic, partial fraction decomposition, and factoring.

## Three algorithms

**Euclidean algorithm.** Repeatedly replace $$(f, g)$$ by $$(g, \text{rem}(f,g))$$ until the remainder is zero. Simple but suffers from **coefficient explosion**: intermediate remainders can have exponentially large coefficients even when the inputs are small.

**Subresultant pseudo-remainder sequences (Collins 1967).** Replace the naïve remainder by a _pseudo-remainder_ scaled to keep coefficients polynomial in the input size. The subresultant chain also reveals the GCD's degree without full computation, and the coefficients stay bounded by the Hadamard bound on the input.

**Modular GCD.** Compute $$\gcd(f \bmod p, g \bmod p)$$ for several primes $$p$$, then reconstruct the integer GCD using the Chinese Remainder Theorem and Hensel lifting. Fastest in practice for dense inputs; parallelisable across primes.

## Multivariate case

For $$f, g \in \mathbb{Z}[x_1,\ldots,x_n]$$ the same ideas apply but the complexity grows rapidly with $$n$$. Evaluation-interpolation strategies (reduce to univariate via random specialization, compute GCD, then interpolate) are typically used.

## Goal

Implement all three algorithms for univariate polynomials over $$\mathbb{Z}$$, verify correctness on a suite of known GCDs, and benchmark running time and coefficient size as a function of degree and coefficient bitsize.

## Milestones

| ID  | Title                                | Due        |
| --- | ------------------------------------ | ---------- |
| M1  | Euclidean + coefficient growth study | 2025-12-01 |
| M2  | Subresultant PRS implementation      | 2026-01-15 |
| M3  | Modular GCD + CRT reconstruction     | 2026-02-10 |
| M4  | Benchmark suite + final report       | 2026-03-01 |

## Tasks

| ID  | Title                                    | Start      | End        | Status |
| --- | ---------------------------------------- | ---------- | ---------- | ------ |
| T1  | Euclidean GCD + coefficient growth plots | 2025-11-05 | 2025-12-01 | todo   |
| T2  | Subresultant PRS                         | 2025-12-02 | 2026-01-15 | todo   |
| T3  | Modular GCD with CRT and Hensel lifting  | 2026-01-16 | 2026-02-10 | todo   |
| T4  | Benchmark + write-up                     | 2026-02-11 | 2026-03-01 | todo   |

## Deliverables

- Julia package with all three algorithms and tests
- Benchmark comparing algorithms on random and structured inputs
- Short report (6–8 pages)

## References

1. G. E. Collins. _Subresultants and Reduced Polynomial Remainder Sequences._
   **Journal of the ACM**, 14(1):128–142, 1967.
   [DOI 10.1145/321371.321381](https://doi.org/10.1145/321371.321381)
