---
layout: page
title:  Volumes
description:  Parallel Computation of Discrete and Continuous Volume
importance: 3
category: work
start: 2016 Aug  
end: 2017 Feb
agency: Reasearch Council of Gebze Technical University
funding: ~3k euro
PI: Zafeirakis Zafeirakopoulos
status: concluded
---

The computation of the volume of a convex polytope is an important problem with many applications. In
this project we address the computation of both continuous and discrete volume. The discrete volume of
a polytope is the number of lattice points it contains. If we consider the t-th dilate of a polytope P, i.e.,
tP={tx: x in P}, then as t tends to infinity the discrete volume approaches the continuous volume.
Let d be the dimension of the polytope P. Ehrhart proved that the function L(t)=|{tx: x in P} intersection
Z^d| is a polynomial of degree d in t, now called the Ehrhart polynomial of P.
The leading coefficient of the Ehrhart polynomial is the continuous volume.
The computation of the discrete volume is an NP-hard problem, since deciding if the volume is zero would
allow to decide Integer Linear Programming feasibility, one of Karp&#39;s 21 NP-complete problems.
Based on previous work on fast algorithms for (continuous) volume, we will design algorithms for efficient
computation of the discrete volume. The first steps towards such a method were presented in SIAM AG
conference in Colorado (USA) in 2013. The collaboration of the PI with Vissarion Fisikopoulos (currently a
postdoctoral researcher in ULB, Belgium) is still going on.
The method is based on interpolating the Ehrhart polynomial. A custom tailored interpolation method will
be developed to achieve better performance.

A goal of the VOLUMES project is the dissemination of the results of this collaboration in the form of a
conference or journal paper and the production of software implementing the method along with extensive
benchmarks against existing methods.

A second goal of the VOLUMES project is the implementation of the fast algorithms for (continuous)
volume approximation using massive parallelism in GPU. This is an application attracting a lot of interest
and any speedup of the state-of-the-art would be welcomed by the community. We intend to use the
produced software for attacking problems that are currently out of reach (without using supercomputers).
Also, having such an implementation, we plan to run extensive benchmarks in order to determine the
practical usefulness of the algorithm.