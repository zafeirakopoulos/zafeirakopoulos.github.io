---
layout: topic
title: Sturm Sequences
description: Implement exact real root counting via Sturm chains and compare with Descartes' rule.
img:
importance: 5
category: topics
related_publications: false
difficulty: easy
level: [undergrad, master]
areas: [algebra]
urgency: 4
---

**Sturm's theorem** (1835) gives a procedure to count the exact number of distinct real roots of a polynomial $$f \in \mathbb{R}[x]$$ in any interval $$[a,b]$$, using only arithmetic on the coefficients — no numerical approximation needed.

## The Sturm chain

Given $$f$$ with no repeated roots, construct the sequence:

$$f_0 = f,\quad f_1 = f',\quad f_{i+1} = -\,\text{rem}(f_{i-1}, f_i)$$

where $$\text{rem}$$ is the polynomial remainder. The chain terminates when a constant is reached.

**Sturm's theorem:** The number of distinct real roots of $$f$$ in $$(a, b]$$ equals

$$\sigma(a) - \sigma(b)$$

where $$\sigma(c)$$ is the number of sign changes in the sequence $$f_0(c), f_1(c), \ldots$$ (zeros are ignored).

## Comparison with Descartes' rule

Descartes' rule counts sign changes in the coefficient sequence to bound the number of positive roots, but gives an upper bound, not an exact count. Sturm gives an exact count but requires computing the full remainder sequence, which can be expensive for large-degree polynomials due to coefficient growth.

The practical comparison:

| Method               | Output      | Cost       | Coefficient growth |
| -------------------- | ----------- | ---------- | ------------------ |
| Descartes            | upper bound | $$O(n)$$   | none               |
| Sturm (naïve)        | exact count | $$O(n^2)$$ | exponential        |
| Sturm (subresultant) | exact count | $$O(n^2)$$ | polynomial         |

Using **subresultant pseudo-remainder sequences** controls the coefficient growth and makes Sturm practical.

## Goal

Implement Sturm's theorem using subresultant remainders, verify on a suite of polynomials, and produce a head-to-head comparison with the Descartes/Collins–Akritas isolator on running time and output quality.

## Milestones

| ID  | Title                          | Due        |
| --- | ------------------------------ | ---------- |
| M1  | Implement naïve Sturm chain    | 2025-12-01 |
| M2  | Subresultant version           | 2026-01-10 |
| M3  | Comparison suite vs. Descartes | 2026-02-10 |
| M4  | Final report                   | 2026-03-01 |

## Tasks

| ID  | Title                             | Start      | End        | Status |
| --- | --------------------------------- | ---------- | ---------- | ------ |
| T1  | Naive Sturm chain + root count    | 2025-11-05 | 2025-12-01 | todo   |
| T2  | Subresultant remainder sequence   | 2025-12-02 | 2026-01-10 | todo   |
| T3  | Descartes isolator for comparison | 2026-01-11 | 2026-02-10 | todo   |
| T4  | Benchmark suite + write-up        | 2026-02-11 | 2026-03-01 | todo   |

## Deliverables

- Julia implementation with tests
- Benchmark comparing Sturm and Descartes on random and structured inputs
- Short report (4–6 pages)

## References

1. G. E. Collins and A. G. Akritas. _Polynomial real root isolation using Descartes' rule of signs._
   SYMSAC 1976, pp. 272–275, ACM.
   [DOI 10.1145/800205.806346](https://doi.org/10.1145/800205.806346)

2. M. Sagraloff and K. Mehlhorn. _Computing real roots of real polynomials._
   **Journal of Symbolic Computation**, 73:46–86, 2016.
   [DOI 10.1016/j.jsc.2015.03.004](https://doi.org/10.1016/j.jsc.2015.03.004)
