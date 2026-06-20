---
layout: topic
title: LLL Lattice Basis Reduction
description: Study and implement the LLL algorithm for lattice basis reduction; apply to short vector problems and polynomial factoring.
img:
importance: 4
category: topics
related_publications: false
difficulty: difficult
level: [master]
areas: [algebra, number-theory]
urgency: 4
---

A **lattice** is a discrete subgroup of $$\mathbb{R}^n$$: the set of all integer linear combinations of a basis $$B = \{b_1, \ldots, b_k\}$$. The same lattice has infinitely many bases; some bases consist of short, nearly orthogonal vectors, while others are long and nearly parallel. The quality of the basis determines how efficiently lattice problems can be solved.

**Lattice basis reduction** is the task of finding a "good" (short, nearly orthogonal) basis for a given lattice. The **LLL algorithm** (Lenstra, Lenstra, Lovász, 1982) does this in polynomial time.

## The LLL algorithm

LLL produces a basis $$(b_1^*, \ldots, b_k^*)$$ satisfying two conditions:

1. **Size reduction:** $$|\mu_{ij}| \leq \frac{1}{2}$$ for all $$i > j$$, where $$\mu_{ij} = \langle b_i, b_j^* \rangle / \|b_j^*\|^2$$ are the Gram–Schmidt coefficients.
2. **Lovász condition:** $$\|b_i^*\|^2 \geq \left(\frac{3}{4} - \mu_{i,i-1}^2\right)\|b_{i-1}^*\|^2$$.

The first output vector $$b_1$$ satisfies $$\|b_1\| \leq 2^{(k-1)/2} \lambda_1$$, where $$\lambda_1$$ is the length of the shortest nonzero lattice vector. LLL thus gives an exponential approximation to the shortest vector problem (SVP).

## Applications

**Factoring polynomials over $$\mathbb{Q}$$** (the original application): reduce polynomial factoring to finding short vectors in a lattice derived from the polynomial. LLL was the key tool in the first polynomial-time factoring algorithm.

**Integer programming in fixed dimension:** short vectors in the dual lattice correspond to cutting planes that are tight for the integer hull.

**Cryptanalysis:** LLL (and its stronger variant BKZ) breaks many lattice-based cryptographic schemes when parameters are too small.

**Diophantine approximation:** find rational approximations to real numbers with controlled denominator size.

## Goal

Implement LLL over $$\mathbb{Q}$$ (exact arithmetic), verify the size-reduction and Lovász conditions after each step, and apply it to at least one of: polynomial factoring over $$\mathbb{Q}$$, or finding short vectors in random lattices.

## Milestones

| ID  | Title                                    | Due        |
| --- | ---------------------------------------- | ---------- |
| M1  | Gram–Schmidt orthogonalization (exact)   | 2025-12-01 |
| M2  | LLL core algorithm with condition checks | 2026-01-15 |
| M3  | Application: polynomial factoring or SVP | 2026-02-15 |
| M4  | Final report                             | 2026-03-01 |

## Tasks

| ID  | Title                                   | Start      | End        | Status |
| --- | --------------------------------------- | ---------- | ---------- | ------ |
| T1  | Exact rational Gram–Schmidt             | 2025-11-05 | 2025-12-01 | todo   |
| T2  | LLL reduction loop                      | 2025-12-02 | 2026-01-15 | todo   |
| T3  | Polynomial factoring or SVP application | 2026-01-16 | 2026-02-15 | todo   |
| T4  | Benchmark + write-up                    | 2026-02-16 | 2026-03-01 | todo   |

## Deliverables

- Julia implementation with exact arithmetic
- Correctness tests and approximation factor measurements
- Short report (6–8 pages)

## References

1. A. K. Lenstra, H. W. Lenstra Jr., and L. Lovász. _Factoring polynomials with rational coefficients._
   **Mathematische Annalen**, 261(4):515–534, 1982.
   [DOI 10.1007/bf01457454](https://doi.org/10.1007/bf01457454)
