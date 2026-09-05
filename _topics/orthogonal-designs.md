---
layout: topic
title: Computer Algebra for Orthogonal Designs
description: Use Gröbner bases to algorithmically extend complementary sequences - the split, fill, and expand algorithms that reverse the Equating/Killing Lemma - toward new orthogonal designs.
img:
importance: 4
category: topics
related_publications: false
difficulty: difficult
level: [master, phd]
areas: [combinatorics, algebra]
topic_category: Combinatorics
urgency: 5
---

An **orthogonal design** $$OD(n; t_1, \ldots, t_\ell)$$ is a square matrix $$D$$ of order $$n$$ with entries from $$\{0, \pm a_1, \ldots, \pm a_\ell\}$$ (commuting variables) satisfying $$DD^T = \left(\sum_{i=1}^\ell t_i a_i^2\right) I_n$$. Orthogonal designs generalize Hadamard matrices and have applications in statistics, telecommunications, coding theory, and cryptography.

**Complementary sequences** are tuples of sequences over the same alphabet $$\{0, \pm a_1, \ldots, \pm a_\ell\}$$ with **zero autocorrelation**: informally, a sequence that doesn't correlate with shifted copies of itself. Sets of complementary sequences, arranged in suitable arrays, are the standard route to constructing orthogonal designs.

## Why it matters

A classical tool for producing new orthogonal designs from old ones is the:

**Equating/Killing Lemma.** If $$D$$ is an $$OD(n; t_1, \ldots, t_\ell)$$, then setting $$a_i = a_j$$ (**Equating**) gives an $$OD(n; t_1, \ldots, t_i + t_j, \ldots, t_\ell)$$, and setting $$a_j = 0$$ (**Killing**) gives an $$OD(n; t_1, \ldots, t_{j-1}, t_{j+1}, \ldots, t_\ell)$$ on one fewer variable.

Both directions _shrink_ the design. Koukouvinos, Simos, and Zafeirakopoulos (ACA 2013) instead ask for an algorithmic version of the **reverse**: given complementary sequences of type $$(t_1, \ldots, t_\ell)$$, algorithmically construct complementary sequences of a _larger_ type — undoing an Equating or a Killing step. Working at the level of sequences rather than full designs keeps the algebra tractable while still producing the building blocks for new orthogonal designs.

## The three algorithms

Given a tuple $$T$$ of complementary sequences of type $$(t_1, \ldots, t_\ell)$$, the paper defines three problems, each the reverse of one direction of the Equating/Killing Lemma:

**Split** (reverse of Equating). Split one type count $$t_i$$ into two, producing type $$(t_1, \ldots, t_{i-1}, t, t_i - t, t_{i+1}, \ldots, t_\ell)$$ for some $$t \in [1, t_i - 1]$$: introduce a brand-new variable that takes over part of $$a_i$$'s occurrences.

**Fill** (reverse of Killing, new symbol). Use some of the tuple's unused zero positions to introduce a genuinely new variable, producing type $$(t_1, \ldots, t_i, t, t_{i+1}, \ldots, t_\ell)$$.

**Expand** (reverse of Killing, existing symbol). Use zero positions to grow an _existing_ variable's count instead, producing type $$(t_1, \ldots, t_i + t, \ldots, t_\ell)$$.

All three share the same machinery: introduce a fresh variable $$x_j$$ at each candidate position (the occurrences of $$a_i$$ for split; the zero positions for fill/expand), then build a polynomial system in $$\mathbb{Q}[a_1, \ldots, a_\ell, x_1, \ldots, x_m]$$ combining

- **zero-autocorrelation constraints** — the autocorrelation function of the new tuple is already polynomial in the $$x_j$$, so "still complementary" is just "these polynomials vanish";
- **bounded-discreteness constraints** $$b_i$$ forcing each $$x_i$$ into a small finite set (e.g. $$b_i = x_i^4 - 1$$ for split, restricting $$x_i \in \{\pm 1, \pm i\}$$), using the standard trick $$V(\langle f_1,\ldots,f_k\rangle) \cap M^m = V(\langle f_1,\ldots,f_k,b_1,\ldots,b_m\rangle)$$ for $$b_i = \prod_{\alpha \in M}(x_i - \alpha)$$;
- **type-count constraints** pinning the total number of newly-assigned positions to a target $$x_t$$ in a feasible range.

Because the resulting variety is zero-dimensional, a **lexicographic (elimination order) Gröbner basis** puts the system in triangular form, so solutions — and hence new complementary sequences — can be read off directly.

## Goal

Reproduce the split, fill, and expand algorithms (in Sage, Julia, or a CAS of your choice), verify them against the paper's worked examples, and extend the search to type/order combinations not covered in the original paper. As a stretch goal — flagged as future work in the paper itself — investigate connecting the algebraic model to the _statistical_ properties of the resulting orthogonal designs (orthogonality, interactions), not just their existence.

## Milestones

| ID  | Title                                                       |
| --- | ----------------------------------------------------------- |
| M1  | Reproduce split/fill/expand on the paper's worked examples  |
| M2  | Implement Gröbner basis construction for all three problems |
| M3  | Search new type/order combinations beyond the paper         |
| M4  | Final report                                                |

## Tasks

| ID  | Title                                                                           | Status |
| --- | ------------------------------------------------------------------------------- | ------ |
| T1  | Implement the algebraic model (variables, autocorrelation polynomials)          | todo   |
| T2  | Implement bounded-discreteness and type-count constraints for split/fill/expand | todo   |
| T3  | Compute Gröbner bases and interpret solutions as new sequences                  | todo   |
| T4  | Explore new cases + write-up                                                    | todo   |

## Deliverables

- Implementation of split, fill, and expand, verified against the paper's worked examples
- At least one new complementary-sequence type/order not in the original paper
- Short report (6–8 pages)

## References

1. C. Koukouvinos, D. E. Simos, and Z. Zafeirakopoulos. _A Gröbner Bases Method for Complementary Sequences._
   Proceedings of Applications of Computer Algebra (ACA) 2013, Málaga, p. 255.
   [PDF]({{ '/assets/pdf/papers/2013_ACA.pdf' | relative_url }})

2. C. Koukouvinos, D. E. Simos, and Z. Zafeirakopoulos. _An algebraic framework for extending orthogonal designs._
   **ACM Communications in Computer Algebra**, 45(1/2):123–124, 2011.
   [DOI 10.1145/2016567.2016587](https://doi.org/10.1145/2016567.2016587)

3. A. V. Geramita and J. Seberry. _Orthogonal Designs: Quadratic Forms and Hadamard Matrices._
   Lecture Notes in Pure and Applied Mathematics, vol. 45, Marcel Dekker, 1979.
