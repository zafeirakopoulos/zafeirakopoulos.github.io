---
layout: topic
title: Lean and Computer Algebra
description: Bridge the gap between Lean/Mathlib's abstract algebra and executable computer algebra - polynomial arithmetic, Gröbner bases, and certified computation.
img:
importance: 3
category: topics
related_publications: false
difficulty: difficult
level: [master, phd]
areas: [algebra]
topic_category: Algebra
urgency: 4
---

Mathlib defines polynomials, ideals, and Gröbner bases **abstractly**, as objects satisfying certain algebraic properties. A computer algebra system needs **executable** algorithms that actually compute a GCD, a normal form, or a Gröbner basis, and, ideally, a proof that the algorithm meets its abstract specification.

This gap between "Lean can state what a Gröbner basis is" and "Lean can compute one, and prove the computation correct" is exactly where formal verification meets computer algebra. As Davenport (2024) puts it, Lean's support for abstract polynomials is "not necessarily the same as support for computations with polynomials" — closing that gap is harder than it looks.

## Why it matters

- **Certified computer algebra.** A computation whose correctness is a Lean theorem, not just a test suite, is immune to an entire class of implementation bugs. This matters most for the primitives (GCD, factorization, Gröbner bases) that everything else in a CAS is built on.
- **Executable Mathlib.** Mathlib's Gröbner basis theory (Buchberger's criterion, existence/uniqueness of reduced Gröbner bases) is stated for arbitrarily many variables, which is elegant for proofs but not obviously executable — connecting the finite, computable case to the general theorem is itself a nontrivial formalization task.
- **A concrete target for `#eval`/`native_decide`.** Lean can already run some polynomial computations; the interesting question is how far this reaches (efficiency, generality) before it needs proof-carrying certificates instead of direct execution.

## Targets

**Polynomial GCD.** Implement a computable GCD for univariate polynomials over a field in Lean, and prove it agrees with Mathlib's abstract `gcd`.

**Buchberger's algorithm.** Implement Buchberger's algorithm for a small multivariate polynomial ring and connect it to Mathlib's existence theorem for reduced Gröbner bases (following Guo–Shen–Liu–Zhi, 2026).

**Reflection-style certification.** Investigate the "compute then verify" pattern used elsewhere in Lean/Coq: run an untrusted fast algorithm, then check its output against a slower, formally verified specification.

## Goal

Implement one executable computer algebra primitive (polynomial GCD or a small Gröbner basis computation) in Lean 4, connect it to the corresponding Mathlib abstraction, and prove the connection.

## Milestones

| ID  | Title                                         | Due        |
| --- | --------------------------------------------- | ---------- |
| M1  | Lean 4 + Mathlib setup; survey polynomial API | 2026-12-01 |
| M2  | Executable algorithm implemented (untrusted)  | 2027-01-15 |
| M3  | Correctness proof connecting it to Mathlib    | 2027-02-20 |
| M4  | Write-up + clean Lean file                    | 2027-03-10 |

## Tasks

| ID  | Title                                           | Start      | End        | Status |
| --- | ----------------------------------------------- | ---------- | ---------- | ------ |
| T1  | Learn Lean 4 + Mathlib's polynomial/ideal API   | 2026-11-05 | 2026-12-01 | todo   |
| T2  | Implement the executable algorithm              | 2026-12-02 | 2027-01-15 | todo   |
| T3  | Prove correctness against Mathlib's abstraction | 2027-01-16 | 2027-02-20 | todo   |
| T4  | Clean proof + write-up                          | 2027-02-21 | 2027-03-10 | todo   |

## Deliverables

- Self-contained Lean 4 file with an executable algorithm and a proof it matches Mathlib's abstract specification
- Short write-up on what made the algorithm hard to make both executable and verified (4–6 pages)

## Resources

- [Lean 4 documentation](https://leanprover.github.io/)
- [Mathlib4](https://leanprover-community.github.io/mathlib4_docs/)
- [Mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/)

## References

1. J. H. Davenport. _First Steps Towards Computational Polynomials in Lean._
   SYNASC 2024, IEEE.
   [DOI 10.1109/synasc65383.2024.00019](https://doi.org/10.1109/synasc65383.2024.00019)

2. J. Guo, H. Shen, J. Liu, and L. Zhi. _Formalizing Gröbner Basis Theory in Lean._
   arXiv:2602.12772, 2026.
   [arxiv.org/abs/2602.12772](https://arxiv.org/abs/2602.12772)
