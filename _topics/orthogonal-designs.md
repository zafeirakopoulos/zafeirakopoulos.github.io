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

**Complementary sequences** are tuples of sequences over the same alphabet $$\{0, \pm a_1, \ldots, \pm a_\ell\}$$ with **zero autocorrelation**. Sets of complementary sequences, arranged in a suitable array, are the standard route to constructing orthogonal designs.

## Definitions

### Autocorrelation and type

For a $$k$$-tuple $$T = (S_1, \ldots, S_k)$$ of sequences of length $$n$$, the **non-periodic** and **periodic autocorrelation functions** are

$$\mathrm{NPAF}_T(s) = \sum_{j=1}^k \sum_{i=1}^{n-s} S_{j,i} S_{j,i+s}, \qquad \mathrm{PAF}_T(s) = \sum_{j=1}^k \sum_{i=1}^{n} S_{j,i} S_{j,i+s \bmod n}$$

for $$s = 0, 1, \ldots, n-1$$, related by $$\mathrm{PAF}_T(s) = \mathrm{NPAF}_T(s) + \mathrm{NPAF}_T(n-s)$$. The **type** of $$T$$ is $$(t_1, \ldots, t_\ell)$$ where $$t_i$$ is the total number of occurrences of $$\pm a_i$$ across all $$k$$ sequences. $$T$$ is a tuple of **complementary sequences** — written $$k\text{-}\mathrm{PAF}(n; t_1,\ldots,t_\ell)$$ or $$k\text{-}\mathrm{NPAF}(n; t_1,\ldots,t_\ell)$$ — if its PAF (resp. NPAF) vanishes for every shift $$s = 1, \ldots, n-1$$.

### From sequences to orthogonal designs: the Goethals–Seidel array

Complementary sequences don't directly form a matrix - they need to be assembled into one. The classical tool (Koukouvinos & Simos, _Australasian J. Combinatorics_ 47, 2010, Theorem 1, citing Geramita–Seberry) is the **Goethals–Seidel array**: given four circulant matrices $$A, B, C, D$$ of order $$n$$ with $$AA^T + BB^T + CC^T + DD^T = fI_n$$, and $$R$$ the back-diagonal matrix,

$$GS = \begin{pmatrix} A & BR & CR & DR \\ -BR & A & D^TR & -C^TR \\ -CR & -D^TR & A & B^TR \\ -DR & C^TR & -B^TR & A \end{pmatrix}$$

is a weighing matrix $$W(4n, f)$$ when $$A,B,C,D$$ are $$(0,\pm1)$$-matrices, and an $$OD(4n; s_1, \ldots, s_u)$$ when their entries come from $$\{0, \pm x_1, \ldots, \pm x_u\}$$ and $$f = \sum_j s_j x_j^2$$. Concretely: **four length-$$n$$ sequences with zero (periodic or non-periodic) autocorrelation become the first rows of the four circulant blocks**, and the array's block structure automatically forces $$GS \cdot GS^T = fI_{4n}$$ — this is exactly why "zero autocorrelation" is the property worth algorithmically preserving when building new sequences from old ones.

## Why it matters

A classical tool for shrinking one orthogonal design into another is the:

**Equating/Killing Lemma.** If $$D$$ is an $$OD(n; t_1, \ldots, t_\ell)$$, then setting $$a_i = a_j$$ (**Equating**) gives an $$OD(n; t_1, \ldots, t_i + t_j, \ldots, t_\ell)$$, and setting $$a_j = 0$$ (**Killing**) gives an $$OD(n; t_1, \ldots, t_{j-1}, t_{j+1}, \ldots, t_\ell)$$ on one fewer variable.

**Equating example.** Take the 4-row tuple $$(a,b,-c) \mid (-c,b,-a) \mid (b,c,b) \mid (b,d,-b)$$ of type $$(1,2,3,6)$$ (four variables $$a,b,c,d$$). Equating $$c$$ with $$-a$$ (i.e. identifying the variables $$a$$ and $$c$$) merges every $$c$$ into $$\mp a$$:

$$(a,b,a) \mid (a,b,-a) \mid (b,-a,b) \mid (b,d,-b), \quad \text{type } (1,5,6).$$

**Killing example.** Take that same tuple $$(a,b,a) \mid (a,b,-a) \mid (b,-a,b) \mid (b,d,-b)$$ of type $$(1,5,6)$$. Killing $$a$$ (setting $$a = 0$$) erases every occurrence of $$\pm a$$:

$$(0,b,0) \mid (0,b,0) \mid (b,0,b) \mid (b,d,-b), \quad \text{type } (1,6).$$

Both directions only ever _shrink_ a design. Koukouvinos, Simos, and Zafeirakopoulos (ACA 2013) ask for an algorithmic version of the **reverse** — and, not by coincidence, the two examples above are exactly the split and fill worked examples below, read backwards.

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

### Worked examples (from the paper)

**Split.** Start from $$T = (a,b,a)\mid(a,b,-a)\mid(b,-a,b)\mid(b,d,-b)$$, type $$(1,5,6)$$. Relabel each of the five $$a$$-occurrences as $$x_1,\ldots,x_5$$, solve the resulting Gröbner system, and get $$\alpha = (i,-1,-1,-i,1)$$, $$x_t = 2$$, which substitutes to $$(x_1,\ldots,x_5) = (a,-c,-c,-a,c)$$:

$$(a,b,-c)\mid(-c,b,-a)\mid(b,c,b)\mid(b,d,-b), \quad \text{type } (1,2,3,6).$$

**Fill.** Start from $$T = (0,b,0)\mid(0,b,0)\mid(b,0,b)\mid(b,d,-b)$$, type $$(1,6)$$. Relabel the five zero positions as $$x_1,\ldots,x_5$$; the solution $$\alpha = (1,1,1,-1,-1)$$, $$x_t = 5$$ substitutes to $$(x_1,\ldots,x_5) = (a,a,a,-a,-a)$$:

$$(a,b,a)\mid(a,b,-a)\mid(b,-a,b)\mid(b,d,-b), \quad \text{type } (1,5,6).$$

**Expand.** Start from the same $$T = (0,b,0)\mid(0,b,0)\mid(b,0,b)\mid(b,d,-b)$$, type $$(1,6)$$, but now grow the _existing_ variable $$d$$ instead of introducing a new one. The same shape of solution, $$\alpha = (1,1,1,-1,-1)$$, $$x_t=5$$, now substitutes to $$(x_1,\ldots,x_5) = (d,d,d,-d,-d)$$:

$$(d,b,d)\mid(d,b,-d)\mid(b,-d,b)\mid(b,d,-b), \quad \text{type } (6,6).$$

Notice fill's output is exactly split's input, and fill/expand share the same input — the three algorithms are meant to be chained: $$(1,6) \xrightarrow{\text{fill}} (1,5,6) \xrightarrow{\text{split}} (1,2,3,6)$$, or $$(1,6) \xrightarrow{\text{expand}} (6,6)$$.

## Goal

Reproduce the split, fill, and expand algorithms (in Sage, Julia, or a CAS of your choice), verify them against the paper's worked examples above, and extend the search to type/order combinations not covered in the original paper. As a stretch goal — flagged as future work in the paper itself — investigate connecting the algebraic model to the _statistical_ properties of the resulting orthogonal designs (orthogonality, interactions), not just their existence.

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

3. C. Koukouvinos and D. E. Simos. _New classes of orthogonal designs and weighing matrices derived from near normal sequences._
   **Australasian Journal of Combinatorics**, 47:11–20, 2010.
   [PDF](https://ajc.maths.uq.edu.au/pdf/47/ajc_v47_p011.pdf)

4. A. V. Geramita and J. Seberry. _Orthogonal Designs: Quadratic Forms and Hadamard Matrices._
   Lecture Notes in Pure and Applied Mathematics, vol. 45, Marcel Dekker, 1979. Out of print, not available online; for a modern treatment see J. Seberry, _Orthogonal Designs: Hadamard Matrices, Quadratic Forms and Algebras_, Springer, 2017 ([DOI 10.1007/978-3-319-59032-5](https://doi.org/10.1007/978-3-319-59032-5), also not freely available).
