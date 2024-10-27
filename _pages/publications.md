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

The two main themes of my research are \term{algorithmic enumeration}
and \term{change of representation}.
In order to achieve my research goals, the computation of bases and
decompositions becomes necessary.
First I will give a bird's-eye view of my research and in later
sections I will elaborate on specific topics.

### Algorithmic Enumeration

Enumeration can be thought of as either counting or listing the elements
of a set.
A number of problems can be viewed as enumeration problems, e.g., counting or listing
* non-negative integer solutions to linear systems
* integer partitions
* lattice points in polyhedra
* (complex, real, etc.) roots of algebraic systems
* multiplicities of points in a variety
* magic squares and other combinatorial structures
* orthogonal designs
\end{itemize}

Since the algorithmic solution of enumeration problems is essential,
their algorithmic complexity is important.
Some of these problems are easy in terms of complexity, while others are hard.
For example, real root counting for univariate polynomials is polynomial-time
solvable, while the enumeration of non-negative integer solutions to linear
systems is NP-hard.

One of the first problems one encounters when trying to solve enumeration
problems is how to enumerate an infinite set of objects.
\term{Generating functions} is a standard tool addressing this problem.
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
anymore, although in some cases it is possible that \term{refined counting} is
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
of my research plan include the solution of linear Diophantine systems and
the computation of rational generating functions for integer partitions
under linear constraints (see Section~\ref{sec:SPG}),  the
computation of rational generating functions for the lattice points in
polyhedra of infinite dimension (see Section~\ref{sec:SPG}), the algorithmic
treatment of identities concerning integer partitions and their generating
functions (see Section\ref{sec:GIP}), the efficient computation of Ehrhart
polynomials (see Section~\ref{sec:EI}),  computing the directional multiplicity
of isolated points in affine varieties (see Section\ref{sec:DM}) 
% , the computation of orthogonal designs and complementary sequences (see Section~\ref{sec:OD}) 
and the counting of real roots of algebraic systems
$$\cite{studbook}$$.


### Change of Representation

The second major theme of my research is change of representation.
In order to combine the theory and the algorithmic tools from different areas
of mathematics, it is essential to transform the representation of an object
from one area to the representation used in another.
A typical example is the representation of solutions to linear Diophantine
systems, which can be taken as a semigroup from a classical algebraic
viewpoint, or the set of constrained integer partitions in the context of
number theory, or the set of lattice points in a polyhedron when represented as
a
polyhedral-geometric object.

This identification of the different representations is not always easy, but it
is almost always helpful.
Different properties of the object are better understood under different
representations.
Moreover, one can exploit the different representations algorithmically to
achieve better results.
The former can be seen in $$\cite{BeckZaf}$$, where the self-reciprocity
of the generating function for Lecture Hall partitions is studied in the
context of Gorenstein cones.
The latter is evident in the development of the Polyhedral Omega algorithm in
[PO17](#Breuer2017).
Often it is important to have two representations of an object, since for some question
the first representation is more convenient while for other questions it is the second.
For example, if we want to check if a point belongs to a curve, then the implicit form (see Section~\ref{sec:IM})
is better.
If we want to plot the curve though, the parametric form (see Section~\ref{sec:ptopo}) is better.


The change of representation theme, appears in my research clearly 
% in the transformation of the problem of finding complementary sequences and orthogonal
% designs to a problem of ideals in a certain polynomial ring (see
% Section\ref{sec:OD}), 
in the treatment of integer partitions as lattice points
in polyhedra (see Section~\ref{sec:SPG} and Section~\ref{sec:GIP}) and in the
consideration of the Ehrhart polynomial computation as an interpolation
problem, which in turn becomes again a problem in polyhedral geometry (see
Section\ref{sec:EI}).

### Bases and Decomposition

Through the change of representation, one of the major goals is to obtain a
more concise and complete description of the object.
It is very usual and natural, to resort in the computation of some kind of
basis for the model we created.

In the realm of algebraic systems, the most usual tools I employ are Gr\"obner
and dual bases.
Their study is of independent interest (see Section \ref{sec:EI} and
\cite{AngelosZaf, rahkooy2011}), but also an integral part of the study of other
problems 
  % see Section \ref{sec:OD} and 
\cite{simos2014,ACAMalaga}.

A tool that provides a lot of information when dealing with polyhedral objects
is a basis for the underlying semigroup structure, i.e., the Hilbert basis of
the saturation of the semigroup defined by the generators of a cone.
% The reduction of the study of a polyhedron to the study of cones is done by
% decomposition.
During my research, I mostly used Brion and Lawrence-Varchenko decompositions
of polyhedra into cones (see Section \ref{sec:SPG}).
On the other hand, in the context of implicitization  (see Section
\ref{sec:IM} and \cite{EmirisZaf}), we used Minkowski decomposition in order to
compute the Newton polytope of the implicit equation.


 

<script type="text/tikz"> 

\def\symboliccomputation{(0,0) circle (2.5cm)}
\def\numbertheory{(4,0) circle (3cm)}
\def\combinatorics{(-4.5,1) circle (3cm)}
\def\alggeom{(0,3.5) circle (3cm)}
\def\polygeom{(1.8,-4) ellipse (1.5cm and 7cm)}
\def\genfun{(-1.6,-3.5) circle (3cm)}
 
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
        \draw \alggeom;
        \draw \polygeom;
        \draw \genfun;
        \draw \symboliccomputation node [below] { \hspace{-3em}Algorithms};
        \draw \numbertheory node[above] { \hspace{5em} Number Theory};
        \draw \combinatorics node [above] {Combinatorics};
        \draw \alggeom node [above] {Algebraic Geometry};
        \draw \polygeom node [below, text width=2cm] {\vskip 4em {Polyhedral Geometry}};
        \draw \genfun node [below] { \hspace{-4em} Generating Functions};
   \end{scope}


    \begin{scope}[fill opacity=0.5]
      \clip \combinatorics;
      \clip \alggeom;
      \fill[red] \symboliccomputation;
    \end{scope}
    \createLabel{a}{(-5.5,-7.5)}{(-1.8,1.5)}{
      \begin{itemize}
       \item Orthogonal Designs
       \item Topology of parametric curves
      \end{itemize}
    }{north}

    \begin{scope}[fill opacity=0.5]
      \clip \numbertheory;
      \clip \polygeom;
      \fill[red] \symboliccomputation;
    \end{scope}
    \createLabel{a}{(5.8,-5)}{(2,0)}{
      \begin{itemize}
       \item Symbolic \\ Polyhedral $$\Omega$$
       \item Algorithmic Partition \\ Theory
      \end{itemize}
    }{north}


     \begin{scope}[fill opacity=0.5]
      \clip \genfun;
      \clip \polygeom;
      \fill[red] \symboliccomputation;
    \end{scope}
    \createLabel{a}{(-2,-10)}{(0.7,-2)}{
      \begin{itemize}
       \item Symbolic \\ Polyhedral \\ Geometry
      \end{itemize}
    }{north}


     \begin{scope}[fill opacity=0.5]
      \clip \alggeom;
      \fill[red] \symboliccomputation;
    \end{scope}
    \createLabel{a}{(-6,6)}{(0,1.3)}{
      \begin{itemize}
       \item Directional Multiplicity
       \item Elimination Theory
      \end{itemize}
    }{east}


     \begin{scope}[fill opacity=0.5]
      \clip \alggeom;
      \clip \polygeom;
      \fill[red] \symboliccomputation;
    \end{scope}
    \createLabel{a}{(5.5,5.5)}{(1.3,1.7)}{
      \begin{itemize}
       \item Ehrhart \\ Interpolation
       \item Implicitization
      \end{itemize}
    }{west}

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
