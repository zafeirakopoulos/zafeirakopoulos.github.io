---
layout: topic
title: Chamber Complex
description: Study the chamber complex of a parametric integer program and compute it algorithmically.
img:
importance: 2
category: topics
related_publications: false
difficulty: normal
level: [master]
areas: [geometry, combinatorics]
urgency: 5
---

When an integer program $$\{Ax = b,\, x \geq 0,\, x \in \mathbb{Z}^n\}$$ depends on a parameter vector $$b \in \mathbb{R}^d$$, the solution set and its generating function change as $$b$$ varies. However, they remain **combinatorially equivalent** within regions of parameter space called **chambers**: open polyhedral cones separated by hyperplanes where the combinatorial type changes.

The collection of these chambers and their bounding hyperplanes is the **chamber complex** of the problem.

## Why it matters

- **Parametric counting.** Algorithms such as Barvinok's (1994) and Polyhedral Omega produce a piecewise rational generating function — one rational formula per chamber. Computing the chamber complex is a prerequisite for producing this output in closed form.
- **Sensitivity analysis.** Each chamber boundary is a hyperplane where the optimum jumps discontinuously or a new set of constraints becomes active. Knowing the complex lets you answer sensitivity questions exactly.
- **Ehrhart theory.** The Ehrhart quasi-polynomial of a polytope $$tP \cap \mathbb{Z}^n$$ (as a function of integer $$t$$) has a chamber structure driven by the denominators of Barvinok's rational functions.

## Key objects

**Hyperplane arrangement** $$\mathcal{H}$$: the set of hyperplanes
$$H_i = \{\,b \in \mathbb{R}^d \mid \langle a_i, b \rangle = 0\,\}$$
induced by the rows of $$A$$ and the sign conditions that define feasibility transitions.

**Chambers**: connected components of $$\mathbb{R}^d \setminus \bigcup_i H_i$$.

**Faces**: lower-dimensional cells where several hyperplanes meet; a chamber complex is a polyhedral fan.

## Computational challenges

- The number of chambers can be exponential in $$d$$ (up to $$\binom{|\mathcal{H}|}{d}$$).
- Incremental algorithms add one hyperplane at a time, updating the current fan.
- **Signed hyperplane traversal** and **reverse search** (Avis–Fukuda style) enumerate all chambers without storing them all simultaneously.

## Goal

Study the definition and properties of chamber complexes, implement a basic algorithm for low-dimensional parameter spaces, and apply it to small parametric knapsack instances using the Polyhedral Omega package.

## Plan

```mermaid
gantt
  title Chamber Complex — Semester Plan
  dateFormat  YYYY-MM-DD
  axisFormat  %b %d
  Theory: arrangements & fans :done,   c1, 2025-11-01, 2025-11-21
  Small examples (d=2,3)       :active, c2, 2025-11-22, 2025-12-20
  Implementation prototype     :        c3, 2025-12-21, 2026-02-01
  Report & examples            :        c4, 2026-02-02, 2026-03-01
```

## References

1. A. I. Barvinok. _A Polynomial Time Algorithm for Counting Integral Points in Polyhedra When the Dimension is Fixed._
   **Mathematics of Operations Research**, 19(4):769–779, 1994.
   [DOI 10.1287/moor.19.4.769](https://doi.org/10.1287/moor.19.4.769)

2. S. Verdoolaege, R. Seghir, K. Beyls, V. Loechner, and M. Bruynooghe. _Counting Integer Points in Parametric Polytopes Using Barvinok's Rational Functions._
   **Algorithmica**, 48(1):37–66, 2007.
   [DOI 10.1007/s00453-006-1231-0](https://doi.org/10.1007/s00453-006-1231-0)

3. M. Köppe and S. Verdoolaege. _Computing Parametric Rational Generating Functions with a Primal Barvinok Algorithm._
   **Electronic Journal of Combinatorics**, 15(1), 2008.
   [combinatorics.org](http://www.combinatorics.org/Volume_15/Abstracts/v15i1r16.html)

4. F. Breuer and Z. Zafeirakopoulos. _Polyhedral Omega: a New Algorithm for Solving Linear Diophantine Systems._
   **Annals of Combinatorics**, 21(2):211–280, 2017.
