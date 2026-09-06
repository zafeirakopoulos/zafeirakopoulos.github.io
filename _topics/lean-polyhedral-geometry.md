---
layout: topic
title: Lean and Polyhedral Geometry
description: Formalize polyhedra, cones, and linear programming duality in Lean 4 and Mathlib, connecting to the lab's Polyhedral Omega work.
img:
importance: 3
category: topics
related_publications: false
difficulty: difficult
level: [master, phd]
areas: [geometry, algebra]
topic_category: Geometry
urgency: 4
---

A **polyhedron** $$P = \{x \in \mathbb{R}^n \mid Ax \leq b\}$$ is an intersection of finitely many halfspaces. Basic facts about polyhedra — Farkas' lemma, LP duality, the Minkowski–Weyl theorem (every polyhedron is both an intersection of halfspaces and a Minkowski sum of a polytope and a cone) — underlie everything from linear programming to Polyhedral Omega's chamber decompositions.

**Lean 4**, with its **Mathlib** library, is increasingly used to give machine-checked proofs of such results. Because a formal proof must make every hidden case explicit, formalizing polyhedral theory tends to expose exactly the degenerate cases (empty polyhedra, unbounded directions, redundant constraints) that informal treatments wave past.

## Why it matters

- **Certified geometry for Polyhedral Omega.** PO's correctness rests on properties of polyhedral cones (unimodularity of triangulations, validity of the inclusion-exclusion used in omega elimination). A formal library of cone/polyhedron lemmas is a prerequisite for eventually certifying PO's output rather than trusting an implementation.
- **Farkas-type theorems are load-bearing.** Chamber complexes, LP duality, and integer programming bounds all reduce, at some point, to a Farkas alternative. Recent work (Dvořák–Kolmogorov, 2026) shows these can be stated and proved uniformly over ordered fields in Lean, including the "infinite coefficient" edge cases that classical treatments handle separately.
- **A different proof assistant already has a mature library.** Coq-Polyhedra (Allamigeon–Katz) formalizes convex polyhedra via the simplex method, including Farkas' lemma and LP duality, in Coq. Comparing what transfers cleanly to Lean/Mathlib and what doesn't is itself informative.

## Targets

**Farkas' lemma and LP duality.** Formalize (or adapt from Dvořák–Kolmogorov) the statement and proof of a Farkas alternative over an ordered field, and derive weak/strong LP duality as a corollary.

**Minkowski–Weyl for polytopes.** Prove that a bounded polyhedron equals the convex hull of its vertices, at least in a restricted (e.g. full-dimensional, or fixed small dimension) case tractable for a semester project.

**Cone unimodularity.** Formalize the definition of a unimodular cone and prove closure properties needed for triangulation-based algorithms (a prerequisite for eventually connecting to Polyhedral Omega).

## Goal

Formalize Farkas' lemma (or a comparably load-bearing polyhedral theorem) in Lean 4 using Mathlib, producing a self-contained, compiling Lean file, and write up which parts of the informal proof needed the most work to make fully rigorous.

## Milestones

| ID  | Title                                                 |
| --- | ----------------------------------------------------- |
| M1  | Lean 4 + Mathlib setup; survey existing convexity API |
| M2  | State target theorem; sketch the paper proof          |
| M3  | Main theorem formalized and compiling                 |
| M4  | Write-up + clean Lean file                            |

## Tasks

| ID  | Title                                        | Status |
| --- | -------------------------------------------- | ------ |
| T1  | Learn Lean 4 + Mathlib's convexity hierarchy | todo   |
| T2  | Select target theorem + sketch proof         | todo   |
| T3  | Formalize main theorem in Lean 4             | todo   |
| T4  | Clean proof + write-up                       | todo   |

## Deliverables

- Self-contained Lean 4 file with a compiling proof of a Farkas-type or polyhedral structure theorem
- Short write-up comparing the formal proof to its informal textbook version (4–6 pages)

## Resources

- [Lean 4 documentation](https://leanprover.github.io/)
- [Mathlib4](https://leanprover-community.github.io/mathlib4_docs/)
- [Mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/)

## References

1. M. Dvořák and V. Kolmogorov. _Duality theory in linear optimization and its extensions — formally verified._
   **Annals of Formalized Mathematics**, 2:1–37, 2026.
   [DOI 10.46298/afm.14253](https://doi.org/10.46298/afm.14253)

2. X. Allamigeon and R. D. Katz. _A Formalization of Convex Polyhedra Based on the Simplex Method._
   **Journal of Automated Reasoning**, 63(2):323–345, 2018.
   [DOI 10.1007/s10817-018-9477-1](https://doi.org/10.1007/s10817-018-9477-1) ·
   [arXiv:1706.10269](https://arxiv.org/abs/1706.10269)
