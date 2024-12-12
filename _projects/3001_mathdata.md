---
layout: page
title: math-data
description: A system for efficient representation of mathematical data and benchmarking of mathematical software and algorithms
img: assets/img/md.png
importance: 2
category: work
related_publications: true
start: 2017 Mar  
end: 2019 Jul
agency: TUBITAK 3001
funding: ~17k euro
PI: Zafeirakis Zafeirakopoulos
status: concluded
---

The scientific community produces constantly data that is used for various purposes. Most of this data is discarded after used for a particular purpose and produced from scratch next time it is needed. This phenomenon is even more common in the math community.

Mathematical software treats data as a byproduct and only rarely as a first class citizen in the world of mathematical research. Nevertheless, modern mathematics research involves large amount of data, experimental or in the form of using well defined mathematical structures. In recent years, especially through the work of the Big Data community, the importance of data in research has been highlighted. Although the Big Data community developed an excellent toolbox for scalar/numerical data, there is no similar toolbox for graphs, polynomials and structured mathematical data in general. This lack of appropriate tools hinders research in mathematics, but also impedes the use of state-of-the-art mathematics by industry.

In short, each time we need to use some data, we reinvent the wheel. It is of great importance to be able to efficiently store, reuse and share mathematical data, as well as analyze it in modern ways. On the other hand, the lack of an easy and general enough way of performing benchmarks of mathematical software, leads to the ad hoc development of benchmarking tools to be used only once by only one research team. The benchmarks are not reproducible and in general not usable by other researchers. Except for the waste of resources in academia, this is a very big obstacle for industry to adopt new methods, since the cost of evaluating them is too high.

In recent years, a lot of effort has been put by the Mathematical Knowledge Management (MKM) community concerning the representation of mathematics. Unfortunately, the data of the MKM systems is mathematical theories, i.e., axioms, definitions and theorems. Thus we cannot directly use the tools developed in order to treat mathematical data (MathData).

At the same time, the need for reproducible research is constantly growing. From journals to courses, one can observe the recent increase in the interest on reproducible research. A number of web services offering to store datasets are available, but they focus mostly on scalar data. Nevertheless, despite the lack of the right tools, there are various projects intended to produce databases of mathematical objects. The efforts are fragmented and each project adopts different policies and representation principles. The lack of a uniform way to represent, exchange and store data in a robust way hinders the usability of those databases.

Part of the need for MathData lies exactly in the surprisingly bad shape the state-of-the-art solutions are, for such an important problem. 
This project was about developing a standard representation for storing and sharing MathData, in the form of the description language MathDataLanguage. 
By providing a unified and publicly accessible MathDataLibrary, we expect that the communities of both mathematicians and computer scientists will embrace the new standard and take advantage of it.

Building on this new data representation, we develop a fully automated system for performing benchmarks. The benchmarks are shareable, reusable and reproducible, because they are expressed in a descriptive language that is independent of the scientific area, the hardware platform or the software used. This way, we can reproduce all the tasks necessary in any given environment fully automatically.

This breaks the barrier that for many scientists, who are not familiar with computer science, prevents them from performing benchmarks and sharing their experimental results. Following the paradigm of web platforms for sharing hardware benchmarks, we provide a web platform for sharing software benchmarks. Such a platform would be useful for industrial users who wish to evaluate new software solutions without the overhead cost of performing a resource consuming evaluation of the available solutions.
