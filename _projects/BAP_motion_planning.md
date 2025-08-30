---
layout: page
start: 2018 Oct  
end: 2020 Feb
title: Algebraic Motion Planning 
description:  Developing algebraic tools for motion planning in dynamic environments
importance: 3
category: work
agency: Reasearch Council of Gebze Technical University
funding: ~3k euro
PI: Zafeirakis Zafeirakopoulos, Gizem S&uuml;ng&uuml;
status: concluded
---

The problem of motion/path planning has become one of the most important research areas in the
autonomous robot systems in last decades. There are many studies for many parts or variations of
the problem in the literature.
In general, the problem concerns a robot (mechanical object) moving in a 2D or 3D environment
containing obstacles. The obstacles define forbidden regions in the configuration space of the robot.
When the robot moves between any two positions, a path should be drawn in the obstacle-free space.
This path is a connected set of curves in the free space. A motion planning algorithm performs the
task of determining such a path in the obstacle-free space (collision free path).
Motion planning is relevant for robots such as cars, flying vehicles in air or in space, virtual humans
or humanoid robots, smart video game characters or any kind of robots that should move between
two points in an environment. Motion planning algorithms have been improved by taking into
consideration the type of the given robot, the density of obstacles in the given environment, mobility
of the given robot, etc.
The goal of this project is to study the problem of motion planning, taking into account optimality of

the planned motion and efficiency of the computation, combined with the dynamic element of non-
stationary and randomly appearing obstacles. We will evaluate most of the parameters and aspects

for environments which are defined in the literature about motion planning and we will propose real-
world scenarios for the problem with combinations of these parameters that fit modern needs of

autonomous vehicles. Then, in order to develop state-of-the-art motion planning algorithms, we will
use advances in the algebraic tools, such as curve topology computations and cylindrical algebraic
decomposition. If needed, we will adapt the algebraic tools to tackle better the problem for different
scenarios. Our results will be implemented in the open source library OMPL.