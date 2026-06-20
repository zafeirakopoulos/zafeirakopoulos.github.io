---
layout: topic
title: Graver Bases
description: Implement Graver basis computation for structured matrices and connect to Hilbert bases and integer programming augmentation.
img:
importance: 4
category: topics
related_publications: false
difficulty: difficult
level: [master, phd]
areas: [algebra, optimization]
urgency: 5
---

The **Graver basis** of an integer matrix $$A \in \mathbb{Z}^{m \times n}$$ is the finite set of all **primitive elements** of the integer kernel $$\ker_{\mathbb{Z}}(A) = \{z \in \mathbb{Z}^n : Az = 0\}$$: vectors $$z$$ that cannot be written as $$z = u + v$$ with $$u, v \in \ker_{\mathbb{Z}}(A)$$ nonzero and sign-compatible ($$u_i v_i \geq 0$$ for all $$i$$).

Graver bases were introduced by Graver (1975) as a universal structure for integer linear programming: any optimal solution to any linear program over the feasible integer points of $$Ax = b,\, x \geq 0$$ can be reached from any feasible point by augmenting along Graver basis elements.

## Connection to Hilbert bases

The Graver basis contains the **Hilbert basis** (minimal generating set of the integer cone) as a subset, but is generally larger. It is the "maximum" generating set needed for augmentation-based optimization.

For a cone $$C = \{x \in \mathbb{R}^n : Ax \geq 0\}$$, the Hilbert basis generates all integer points in $$C$$ as nonneg. integer combinations. The Graver basis generates all sign-reversals as well.

## Augmentation algorithm

Given a feasible point $$x^*$$ for $$\min\{cx : Ax = b,\, x \in \mathbb{Z}_{\geq 0}^n\}$$, the **Graver augmentation step** finds $$g$$ in the Graver basis such that $$c \cdot g < 0$$ and $$x^* + g \geq 0$$. Repeating until no improving direction exists yields the optimum.

This is particularly powerful for **$$N$$-fold integer programs** (De Loera et al., 2008): matrices with a block-diagonal structure where the Graver basis has bounded size in fixed dimension, giving polynomial-time algorithms.

## Goal

Implement Graver basis computation for small matrices ($$n \leq 10$$), verify against the Hilbert basis, and apply the augmentation algorithm to small integer programs, including an $$N$$-fold example.

## Milestones

| ID  | Title                                      | Due        |
| --- | ------------------------------------------ | ---------- |
| M1  | Hilbert basis computation for small cones  | 2025-12-01 |
| M2  | Graver basis via sign-compatibility filter | 2026-01-15 |
| M3  | Augmentation-based ILP solver              | 2026-02-15 |
| M4  | N-fold example + final report              | 2026-03-01 |

## Tasks

| ID  | Title                                      | Start      | End        | Status |
| --- | ------------------------------------------ | ---------- | ---------- | ------ |
| T1  | Hilbert basis (Pottier or enumeration)     | 2025-11-05 | 2025-12-01 | todo   |
| T2  | Graver basis computation                   | 2025-12-02 | 2026-01-15 | todo   |
| T3  | Augmentation algorithm + correctness tests | 2026-01-16 | 2026-02-15 | todo   |
| T4  | N-fold ILP case study + write-up           | 2026-02-16 | 2026-03-01 | todo   |

## Deliverables

- Julia implementation with tests
- Comparison Hilbert basis vs. Graver basis on small examples
- Short report (6–8 pages)

## References

1. J. E. Graver. _On the foundations of linear and integer linear programming I._
   **Mathematische Zeitschrift**, 147(3):211–233, 1975.
   [DOI 10.1007/bf01681344](https://doi.org/10.1007/bf01681344)

2. J. A. De Loera, R. Hemmecke, S. Onn, and R. Weismantel. _$$N$$-fold integer programming._
   **Discrete Optimization**, 5(2):231–241, 2008.
   [DOI 10.1016/j.disopt.2006.06.006](https://doi.org/10.1016/j.disopt.2006.06.006)

3. A. I. Barvinok. _A Polynomial Time Algorithm for Counting Integral Points in Polyhedra When the Dimension is Fixed._
   **Mathematics of Operations Research**, 19(4):769–779, 1994.
   [DOI 10.1287/moor.19.4.769](https://doi.org/10.1287/moor.19.4.769)
