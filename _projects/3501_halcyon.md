---
layout: page
title: HALCYON
description: Heterogeneous Algorithms for Combinatorics, Geometry, Optimization and Number Theory 
img: assets/img/md.png
importance: 2
category: work
start: 2017 Oct  
end: 2020 Oct
agency: TUBITAK 3501
funding: ~80k euro
PI: Zafeirakis Zafeirakopoulos
status: concluded
---


In an era of transition, from petascale to exascale computation, it is crucial to contemplate on our algorithmic tools. Computers become more powerful every day, but we have reached the limits of the computational power that our algorithms can exploit. We need to adapt old algorithms and develop new ones that can harvest the computational power available today and tomorrow. The algorithms that need to be improved are both low-level procedures such as arithmetic and higher level methods such as generating function methods. The priority in this procedure must be given in the algorithmic methods that will allow us to solve more efficiently important industrial and academic problems. Given the expected growth in computational power, if we are ready to use it in its maximum potential, we will be able to solve industrial and academic problems that today look out of reach.

The increase in computational power is usually quantified by the amount of floating point operation we can perform per second (flops). A big part of the existing software is based on numerical computation, in other words allowing for some error that is usually under control. This error (and its control) limits the amount of operations we can perform safely and puts a limit of how much computational power we can efficiently exploit. Current research focuses on improving the numerical methods in order to apply them on accelerator hardware such as GPUs. Another approach, which we take in this project, is to perform symbolic computation, i.e., exact computing. Symbolic computation is more expensive than numerical computation in principle, but it scales well with the growth of computational power. From the 1960's until a decade ago, symbolic computation was not a prime choice because our computational systems did not have enough computational power and memory. But symbolic computation and high performance computing systems of the future will live in harmony, since one is made for the other.

In this project we will use methods from algebra and polyhedral geometry, connected by the use of symbolic computation. Particular methods that we plan to improve and implement efficiently are Polyhedral Omega, Minkowski Decomposition and Fundamental Parallelepiped Enumeration. We plan to extend the capabilities of Polyhedral Omega, by allowing the dimension of the problem to be symbolic, i.e., arbitrary but fixed. One important topic that we plan to treat is symbolic cone arithmetic. Symbolic cones were introduced recently as an alternative to rational function computations in order to avoid combinatorial explosion when performing computations with generating functions. A drawback of symbolic cones is that we do not yet have a sound theoretical framework, let alone an efficient implementation, for symbolic cone arithmetic. Minkowski decomposition, although conceptually easy, it is a very hard computational problem. Until recently the focus was on low dimensional polytopes, but due to the need both in theoretical algebra and geometry and in applications for Minkowski decomposition in general dimension the focus shifted. We plan to improve existing algorithms and parallelize them, in order to allow Minkowski decomposition to be used efficiently. In order to obtain efficient implementations of the above mentioned algorithms, we will first develop algorithms and software libraries to perform exact integer/rational and polynomial/rational function arithmetic in modern computational platforms, such as the Xeon Phi. Concluding, this project is about bridging theoretical advances in mathematics with modern computational architectures. It is a first step towards tomorrow, towards an era of unprecedented computational power that we are not yet prepared to harness. It is an example of how theory and practice in mathematics move forward together. By developing the theory that let us improve the algorithms, which in turn allow us to explore further widening our mathematical horizons.