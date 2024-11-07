---
layout: page
permalink: /publications/
title: Research
description: 
nav: true
nav_order: 1
tikzjax: true
---

[Goto publications](#publications)

 
Since the ancient times, mathematicians were developing computational and
algorithmic tools in order to answer the various mathematical questions or daily
problems they faced.
In the beginning of last century, the research focus of
mathematicians shifted from computational to existential problems,
but during the last decades, the long line of research in
computational mathematics was restored.
My work is following this line of research, on effective theory and algorithms.

My research interests span the area between combinatorics, polyhedral
geometry, number theory and algebra.
More precisely, the tools I am using come mostly from polyhedral geometry and
computational algebraic geometry (computer algebra), while the problems I am trying to solve come
from combinatorics, number theory, algebra or any of their intersections.
I am mostly interested in research topics combining tools from different areas.
Except for the intrinsic importance of interdisciplinary research, another
reason is that knowledge transfer, more often than not, leads to better
algorithmic solutions.
Algorithms bind together the aforementioned areas as far as my interests are
concerned.
In particular, algorithms from polyhedral and algebraic geometry can
be used in order to devise algorithms to solve combinatorial or number
theoretic problems and vice versa.
During the process, one gains insight on the resulting algorithm by
connecting to something known, but often also improves the algorithmic tool
itself.

The two main themes of my research are **algorithmic enumeration** and **change of representation**.
In order to achieve my research goals, the computation of bases and
decompositions becomes necessary.

### Algorithmic Enumeration

Enumeration can be thought of as either counting or listing the elements
of a set.
A number of problems can be viewed as enumeration problems, e.g., counting or listing
* non-negative integer solutions to linear systems
* integer partitions
* lattice points in polyhedra
* (complex, real, etc.) roots of algebraic systems
* magic squares and other combinatorial structures
* orthogonal designs
 
Since the algorithmic solution of enumeration problems is essential,
their algorithmic complexity is important.
Some of these problems are easy in terms of complexity, while others are hard.
For example, real root counting for univariate polynomials is polynomial-time
solvable, while the enumeration of non-negative integer solutions to linear
systems is NP-hard.

One of the first problems one encounters when trying to solve enumeration
problems is how to enumerate an infinite set of objects.
**Generating functions** is a standard tool addressing this problem.
For simplicity, and because this is the most used case in my research, let's
assume $$S$$ is a subset of $$\mathbb{N}^d$$ for some $$d\in\mathbb{N}^{*}$$.
Then we define $$\Phi_{z}^{S}$$, the generating function of $$S$$, to be the formal
sum
$$\Phi_{z}^{S}=\sum_{\alpha\in S}^{} z^\alpha,$$
where $$z^\alpha=z_1^{\alpha_1}z_2^{\alpha_2}\cdots z_n^{\alpha_d}$$ (multi-index
notation).
If there exists a rational function which has $$\Phi_{z}^{S}$$ as a series
expansion, then we denote it by $$\rho_{z}^{S}$$ and call it a rational
generating function of $$S$$.

Obviously, in the case of infinite sets the notion of counting is not valid
anymore, although in some cases it is possible that **refined counting** is
both feasible and useful.
For example, if we consider integer partitions, we can formulate the problem of
listing all integer partitions, i.e., the set of all finite and non-decreasing
sequences of integers greater than zero denoted by $$S$$.
The corresponding generating function is
$$\displaystyle
 \sum_{s\in S} z^s.
$$
Although the listing problem is valid, the counting problems is meaningless,
since their number is obviously infinite.
One can consider though, the integer partitions of an integer $$n$$,
denoted by $$S_n$$.
In that case, the number of partitions is finite for arbitrary but fixed $$n$$
and thus both the listing and the counting problems are meaningful.
For the listing problem we have the generating function
$$\displaystyle
\sum_{n=1}^{\infty} q^n \sum_{s\in S_n} z^s,
$$
while for the counting problem the generating function is
$$\displaystyle
 \sum_{n=1}^{\infty} q^n \big| S_n \big| = \left(\sum_{n=1}^{\infty} q^n
\left(\sum_{s\in S_n} z^s\right)\right)_{z_i=1}.
$$
This refined counting, where $$n$$ is a parameter defining the clustering of
integer partitions, can be refined further.
For example, we can ask for the integer partitions of $$n$$ consisting of $$k$$
parts.
On the other hand, we could have also used the number of parts $$k$$, as the
refining parameter alone.
All of the problems above are of interest as enumeration problems in integer
partition theory.

The problems in algorithmic enumeration that I have studied and are still part
of my research plan include the solution of **linear Diophantine systems** and
the computation of rational generating functions for integer partitions
under linear constraints,  the
computation of rational generating functions for the lattice points in
**polyhedra of infinite dimension**, the algorithmic
treatment of identities concerning integer partitions and their generating
functions, the efficient computation of **Ehrhart polynomials**,  computing the directional multiplicity
of isolated points in affine varieties, 
and the counting of real roots of algebraic systems
{% cite studbook %}.


### Change of Representation

The second major theme of my research is change of representation.
In order to combine the theory and the algorithmic tools from different areas
of mathematics, it is essential to transform the representation of an object
from one area to the representation used in another.
A typical example is the representation of solutions to linear Diophantine
systems, which can be taken as a semigroup from a classical algebraic
viewpoint, or the set of constrained integer partitions in the context of
number theory, or the set of lattice points in a polyhedron when represented as
a polyhedral-geometric object.

This identification of the different representations is not always easy, but it
is almost always helpful.
Different properties of the object are better understood under different
representations.
Moreover, one can exploit the different representations algorithmically to
achieve better results.
The former can be seen in {% cite Beck2016 %}, where the self-reciprocity
of the generating function for Lecture Hall partitions is studied in the
context of Gorenstein cones.
The latter is evident in the development of the Polyhedral Omega algorithm in
{% cite Breuer2017 %}.
Often it is important to have two representations of an object, since for some question
the first representation is more convenient while for other questions it is the second.
For example, if we want to check if a point belongs to a curve, then the implicit form is better {% cite issac15 %}.
If we want to plot the curve though, the parametric form {% cite ptopo2023 %} is better.


The change of representation theme, appears in my research clearly 
in the treatment of integer partitions as lattice points
in polyhedra and in the
consideration of the Ehrhart polynomial computation as an interpolation
problem, which in turn becomes again a problem in polyhedral geometry {% cite Fisikopoulos2017 %}.

### Bases and Decomposition

Through the change of representation, one of the major goals is to obtain a
more concise and complete description of the object.
It is very usual and natural, to resort in the computation of some kind of
basis for the model we created.

In the realm of algebraic systems, the most usual tools I employ are Gr\"obner
and dual bases.
Their study is of independent interest
{% cite Mantzaflaris2016 ISSAC2011a %}, but also an integral part of the study of other
problems {% cite ISSAC2011b koukouvinos2013grobner %}.

A tool that provides a lot of information when dealing with polyhedral objects
is a basis for the underlying semigroup structure, i.e., the Hilbert basis of
the saturation of the semigroup defined by the generators of a cone.
During my research, I mostly used Brion and Lawrence-Varchenko decompositions
of polyhedra into simplicial cones.
On the other hand, in the context of implicitization {% cite issac15 %}, we used Minkowski decomposition in order to
compute the Newton polytope of the implicit equation.

### Optimization

Finally, after having the algorithmic tools and useful descriptions of our objects,
the next natural question is to optimize a linear functional over those objects.
In general, various forms of discrete optimization arise within my research.
In particular, I am interested in Integer Linear Programming, since it is the 
optimization version of solving linear Diophantine systems.
In addition, a lot of problems can be approached as Integer Linear Programs (e.g., we currently study 
polynomial multiplication in this setting).
Clearly the methods coming from this research lead to general solutions and thus not expected to 
perform better than the excellent existing heuristics. 
The goal is to study the geometry of problem families and detect families where our tools may perform well. 
 

<script type="text/tikz"> 

\def\symboliccomputation{(0,0) circle (4.5cm)}

\def\alggeom{(0,5.5)  ellipse (5cm and 2.5cm)}
\def\numbertheory{(5,0)  ellipse  (2.5cm and 5cm)}
\def\combinatorics{(-5,0) ellipse  (2.5cm and 5cm)}
\def\genfun{(0,-4.5) ellipse  (5cm and 2.5cm)}

\def\polygeom{(3,0) ellipse (2.5cm and 5cm)}
\def\optim{(2,0) ellipse (3cm and 4cm)}
 
 \newcommand{\createLabel}[5]{
    \coordinate (#1) at #2;
    \node [draw,align=center,text width=3.5cm,inner sep=5pt] (#1#1)
at (#1) {#4};
    \draw [dashed,color=black, very thick, ->]  (#1#1.#5) -- #3 ;
}
 
 \begin{tikzpicture}
    \begin{scope}[fill opacity=0.5]
        \draw \symboliccomputation;
        \draw \numbertheory;
        \draw \combinatorics;
        \draw \alggeom;, 
        \draw \polygeom;
        \draw \genfun;
        \draw \symboliccomputation node [below,rotate=270] {Algorithms};
        \draw \optim node [below,rotate=270] {Optimization};
        \draw \numbertheory node[above,rotate=270] {Number Theory};
        \draw \combinatorics node [above,rotate=270] {Combinatorics};
        \draw \alggeom node [above] {Algebraic Geometry};
        \draw \polygeom node [below,rotate=270] {Polyhedral Geometry};
        \draw \genfun node [below] {Generating Functions};
   \end{scope}

    \begin{scope}[fill opacity=0.5]
      \fill[blue,opacity=0.2] \optim;
    \end{scope}
 

    \end{tikzpicture}
</script>

<br><br>

**The one sentence statement of my research plan is to "develop and implement
algorithms, combining geometry and algebra, for the treatment of enumeration and optimization 
in problems coming from combinatorics and number theory".**
<br><br>

<!-- _pages/publications.md -->

<!-- Bibsearch Feature -->

<!-- {% include bib_search.liquid %} -->

# Publications 

<div class="publications">
{% bibliography  %}
</div>

