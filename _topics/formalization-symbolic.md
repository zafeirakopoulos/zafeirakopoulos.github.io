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

| ID  | Title                                     | Due        |
| --- | ----------------------------------------- | ---------- |
| M1  | Lean 4 + Mathlib setup; integer GCD proof | 2025-12-01 |
| M2  | Polynomial GCD or Descartes formalization | 2026-01-20 |
| M3  | Main correctness theorem proved           | 2026-02-20 |
| M4  | Write-up + clean Lean file                | 2026-03-10 |

## Tasks

| ID  | Title                                      | Start      | End        | Status |
| --- | ------------------------------------------ | ---------- | ---------- | ------ |
| T1  | Learn Lean 4 basics + explore Mathlib      | 2025-11-05 | 2025-12-01 | todo   |
| T2  | Select target theorem + sketch paper proof | 2025-12-02 | 2026-01-10 | todo   |
| T3  | Formalize main theorem in Lean 4           | 2026-01-11 | 2026-02-20 | todo   |
| T4  | Clean proof + write-up                     | 2026-02-21 | 2026-03-10 | todo   |

## Deliverables

- Self-contained Lean 4 file with a compiling proof
- Short mathematical write-up explaining the proof strategy (4–6 pages)

## Resources

- [Lean 4 documentation](https://leanprover.github.io/)
- [Mathlib4](https://leanprover-community.github.io/mathlib4_docs/)
- [Mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/)
