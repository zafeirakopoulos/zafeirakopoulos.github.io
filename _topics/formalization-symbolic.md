---
layout: topic
title: Formalization of Symbolic Algorithms
description: Formally verify symbolic computation algorithms (GCD, Euclidean algorithm, real root isolation) using Lean 4 and Mathlib.
img:
importance: 3
category: topics
related_publications: false
difficulty: difficult
level: [master, phd]
areas: [algebra]
topic_category: Algebra
urgency: 3
---

**Formal verification** is the process of writing machine-checked proofs that a mathematical statement or an algorithm is correct. Unlike testing, a formal proof covers all inputs and all branches.

**Lean 4** is an interactive proof assistant and programming language with **Mathlib**, a large library of formalized mathematics covering algebra, number theory, analysis, and more. It is increasingly used to verify results in pure and applied mathematics.

## Why formalize symbolic algorithms?

Symbolic computation algorithms are often presented informally or with subtle gaps in classical textbooks. Correctness proofs for GCD, subresultant sequences, or real root isolation involve intricate invariants — exactly the kind of reasoning that formal proof assistants are designed to check.

Moreover, Lean 4 allows **certified computation**: a verified algorithm can be extracted and run, guaranteeing that the implementation matches the specification.

## Targets

**Euclidean algorithm.** The basic GCD algorithm for integers and polynomials. Lean/Mathlib already has some GCD infrastructure; the task is to extend or cleanly reprove correctness of the polynomial case including the Bézout identity.

**Subresultant sequence.** Prove that the subresultant pseudo-remainder sequence computes the GCD with bounded coefficients. This requires formalizing the subresultant theorem relating GCD degree to the first nonzero subresultant.

**Descartes' rule of signs.** Formalize the bound on the number of positive real roots by sign changes, and connect it to the Budan–Fourier theorem.

**Sturm's theorem.** Formalize the exact root count via sign changes of the Sturm chain.

## Goal

Formalize at least one of the above in Lean 4 using Mathlib, producing a self-contained, compiling Lean file with a proof of the main correctness theorem.

## Milestones

| ID  | Title                                     |
| --- | ----------------------------------------- |
| M1  | Lean 4 + Mathlib setup; integer GCD proof |
| M2  | Polynomial GCD or Descartes formalization |
| M3  | Main correctness theorem proved           |
| M4  | Write-up + clean Lean file                |

## Tasks

| ID  | Title                                      | Status |
| --- | ------------------------------------------ | ------ |
| T1  | Learn Lean 4 basics + explore Mathlib      | todo   |
| T2  | Select target theorem + sketch paper proof | todo   |
| T3  | Formalize main theorem in Lean 4           | todo   |
| T4  | Clean proof + write-up                     | todo   |

## Deliverables

- Self-contained Lean 4 file with a compiling proof
- Short mathematical write-up explaining the proof strategy (4–6 pages)

## Resources

- [Lean 4 documentation](https://leanprover.github.io/)
- [Mathlib4](https://leanprover-community.github.io/mathlib4_docs/)
- [Mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/)

## References

1. The mathlib Community. _The Lean mathematical library._
   CPP 2020, pp. 367–381, ACM.
   [DOI 10.1145/3372885.3373824](https://doi.org/10.1145/3372885.3373824) ·
   [arXiv:1910.09336](https://arxiv.org/abs/1910.09336)

2. T. A. de Lima, A. B. Avelar, A. L. Galdino, and M. Ayala-Rincón. _Formalizing Factorization on Euclidean Domains and Abstract Euclidean Algorithms._
   **EPTCS**, 402:18–33, 2024.
   [DOI 10.4204/EPTCS.402.5](https://doi.org/10.4204/EPTCS.402.5)

3. W. Li and L. C. Paulson. _Counting polynomial roots in Isabelle/HOL: a formal proof of the Budan-Fourier theorem._
   CPP 2019, pp. 52–64, ACM.
   [DOI 10.1145/3293880.3294092](https://doi.org/10.1145/3293880.3294092) ·
   [arXiv:1811.11093](https://arxiv.org/abs/1811.11093)
