---
layout: topic
title: Continued Fraction Arithmetic
description: Study and implement arithmetic operations on continued fractions following Gosper's algorithm.
img:
importance: 2
category: topics
related_publications: false
difficulty: normal
level: [undergrad, master]
content: [algebra, number-theory]
urgency: 5
---

A continued fraction is a representation of a number as a nested sequence of integer parts:

$$x = a_0 + \cfrac{1}{a_1 + \cfrac{1}{a_2 + \cfrac{1}{a_3 + \cdots}}}$$

The central question is: given continued fraction representations of two numbers $$x$$ and $$y$$, how do we compute the continued fraction of $$x + y$$, $$xy$$, $$x/y$$, or more generally any Möbius transformation $$\frac{ax+b}{cx+d}$$?

## Gosper's Algorithm

In 1972, Bill Gosper described in [HAKMEM](https://zenodo.org/records/17304584) (MIT AI Memo 239) a remarkable algorithm that answers this question directly and lazily: it consumes partial quotients from the inputs one at a time and emits partial quotients of the result as soon as they are determined, without converting to any other representation.

The key idea is to track a $$2\times2$$ integer matrix (for unary operations) or a $$2\times2\times2$$ integer tensor (for binary operations), updating it as new partial quotients are consumed from the input(s) and emitting an output partial quotient whenever the matrix entries agree sufficiently.

HAKMEM is available at:

- [Zenodo (digitised scan)](https://zenodo.org/records/17304584)
- [MIT — original memo](https://hdl.handle.net/1721.1/6086)

The CF arithmetic section begins at Item 101A. It is terse but complete; the key insight (a tensor-based homographic algorithm) was not widely understood until the 1990s.

## References

1. R. W. Gosper. _Continued Fraction Arithmetic_. In **HAKMEM**, MIT AI Memo 239, 1972.
   [Zenodo](https://zenodo.org/records/17304584) · [MIT handle](https://hdl.handle.net/1721.1/6086)

2. J. E. Vuillemin. _Exact Real Computer Arithmetic with Continued Fractions_.
   **IEEE Transactions on Computers**, 39(8):1087–1105, 1990.
   [DOI 10.1109/12.57047](https://doi.org/10.1109/12.57047)

3. A. Edalat and P. J. Potts. _A New Representation for Exact Real Numbers_.
   **Electronic Notes in Theoretical Computer Science**, 6, 1997.
   [DOI 10.1016/S1571-0661(05)80166-5](https://doi.org/10.1016/S1571-0661(05)80166-5)

4. M. Niqui. _Exact Arithmetic on the Stern–Brocot Tree_.
   **Journal of Discrete Algorithms**, 5(2):356–379, 2007.
   [DOI 10.1016/j.jda.2005.03.007](https://doi.org/10.1016/J.JDA.2005.03.007)

