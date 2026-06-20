---
layout: topic
title: Tropical Arithmetic and Optimization
description: Study the tropical semiring, tropical linear algebra, and tropical linear programming; connect to classical LP via the min-plus structure.
img:
importance: 4
category: topics
related_publications: false
difficulty: normal
level: [master, phd]
areas: [algebra, geometry, optimization]
urgency: 4
---

The **tropical semiring** $$(\mathbb{R} \cup \{\infty\}, \oplus, \otimes)$$ replaces the classical operations with:

$$a \oplus b = \min(a, b), \qquad a \otimes b = a + b$$

Addition becomes minimum; multiplication becomes classical addition. The name "tropical" honors the Brazilian mathematician Imre Simon, who studied this structure.

## Why it matters

Tropical algebra is the algebraic shadow of classical algebra under **logarithmic degeneration**: as $$t \to \infty$$, the map $$x \mapsto -\log_t x$$ sends products to sums and sums to minima. This connection means:

- Tropical polynomials are piecewise-linear functions
- Tropical varieties are polyhedral complexes (fans and subdivisions)
- Tropical linear programming is equivalent to shortest-path problems — solvable in polynomial time

Classical linear programming can be viewed as the limit of a family of tropical LPs, and duality in LP corresponds to tropical duality.

## Tropical linear algebra

A **tropical matrix product** $$(A \otimes B)_{ij} = \min_k(A_{ik} + B_{kj})$$ — this is the matrix product in the min-plus semiring. It computes shortest paths (Floyd–Warshall is tropical matrix exponentiation).

A **tropical linear system** $$A \otimes x = b$$ (tropical dot product equals $$b$$) is not always uniquely solvable; the theory of tropical rank and tropical bases extends classical linear algebra in a piecewise-linear setting.

## Tropical varieties

The **tropical variety** of a polynomial $$f(x_1,\ldots,x_n)$$ is the set of points where the minimum in the tropical polynomial is achieved at least twice. This is a polyhedral fan, and Speyer & Sturmfels showed it equals the limit of the classical variety under logarithmic degeneration.

## Goal

Implement tropical arithmetic, tropical matrix multiplication, and a tropical linear programming solver (as a shortest-path problem). Explore at least one connection to classical optimization or algebraic geometry.

## Milestones

| ID  | Title                                          | Due        |
| --- | ---------------------------------------------- | ---------- |
| M1  | Tropical semiring + polynomial evaluation      | 2025-12-01 |
| M2  | Tropical matrix mult. + shortest-path examples | 2026-01-10 |
| M3  | Tropical LP solver + comparison to classical   | 2026-02-10 |
| M4  | Tropical variety of a small example + report   | 2026-03-01 |

## Tasks

| ID  | Title                                      | Start      | End        | Status |
| --- | ------------------------------------------ | ---------- | ---------- | ------ |
| T1  | Tropical semiring arithmetic + polynomials | 2025-11-05 | 2025-12-01 | todo   |
| T2  | Tropical matrix mult. + Floyd–Warshall     | 2025-12-02 | 2026-01-10 | todo   |
| T3  | Tropical LP as min-cost flow               | 2026-01-11 | 2026-02-10 | todo   |
| T4  | Tropical variety example + write-up        | 2026-02-11 | 2026-03-01 | todo   |

## Deliverables

- Julia package with tropical arithmetic and LP solver
- Illustrated examples of tropical varieties
- Short report (6–8 pages)

## References

1. D. Speyer and B. Sturmfels. _Tropical Mathematics._
   **Mathematics Magazine**, 82(3):163–173, 2009.
   [DOI 10.1080/0025570x.2009.11953615](https://doi.org/10.1080/0025570x.2009.11953615)

2. D. Speyer and B. Sturmfels. _Computing tropical varieties._
   **Journal of Symbolic Computation**, 42(1–2):54–73, 2007.
   [DOI 10.1016/j.jsc.2006.02.004](https://doi.org/10.1016/j.jsc.2006.02.004)
