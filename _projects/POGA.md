---
layout: page
title: POGA
description: "Polyhedral Omega: Generalizations and Applications"
img: assets/img/poga.png
importance: 1
category: work
related_publications: true
start: 2022 Oct  
end: 2025 Oct
agency: TUBITAK 1001
funding: ~50k euro
PI: Zafeirakis Zafeirakopoulos (transferred to Dr. Tülay Ayyıldız)
status: ongoing
---

This project is about solving problems that are described by linear Diophantine systems (LDS). The kind of
solutions we seek for LDS is in the form of rational generating functions. There are two types of such problems
we deal with in POGA. Either computing all solutions to a linear Diophantine system (LDS), or computing the
optimal solution with respect to some linear function (objective function). The first type of problems is very
important in number theory and combinatorics, where computing the generating function of some objects with
properties described by linear constraints is common. The second type of problems is ubiquitous in applications,
since a lot of real world problems are modeled as Integer Linear Programs (ILP). In POGA we generalize
Polyhedral Omega, a method for solving linear Diophantine systems, in order to find the generating function for
a family of problems parametrized by their dimension on one hand, and we show how to use it for solving ILP
on the other.
In order to solve families of problems parametrized by dimension, we need to extend linear algebra to work
in symbolic dimension. This means that the dimension is considered as a variable symbol throughout the
computation. To achieve that, we define symbolic matrices, which are matrices described by a finite number
of case distinctions. Manipulating symbolic matrices requires rewriting techniques, since the objects become
complicated. The combination of rewriting techniques with polyhedral geometry is a novel approach. In this
project we focus on using these techniques for extending Polyhedral Omega to Symbolic Polyhedral Omega.
On the other hand, we develop a general method for solving ILP. The main advantage of the method is that
it allows to analyze the geometry of the solution space through Brion decompositions. Moreover, for certain
families of problems it may be competitive with existing heuristics.s




Every project has a beautiful feature showcase page.
It's easy to include images in a flexible 3-column grid format.
Make your photos 1/3, 2/3, or full width.

To give your project a background in the portfolio page, just add the img tag to the front matter like so:

    ---
    layout: page
    title: project
    description: a project with a background image
    img: /assets/img/12.jpg
    ---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/1.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/3.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/5.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    Caption photos easily. On the left, a road goes through a tunnel. Middle, leaves artistically fall in a hipster photoshoot. Right, in another hipster photoshoot, a lumberjack grasps a handful of pine needles.
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/5.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    This image can also have a caption. It's like magic.
</div>

You can also put regular text between your rows of images, even citations {% cite einstein1950meaning %}.
Say you wanted to write a bit about your project before you posted the rest of the images.
You describe how you toiled, sweated, _bled_ for your project, and then... you reveal its glory in the next row of images.

<div class="row justify-content-sm-center">
    <div class="col-sm-8 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm-4 mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/11.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    You can also have artistically styled 2/3 + 1/3 images, like these.
</div>

The code is simple.
Just wrap your images with `<div class="col-sm">` and place them inside `<div class="row">` (read more about the <a href="https://getbootstrap.com/docs/4.4/layout/grid/">Bootstrap Grid</a> system).
To make images responsive, add `img-fluid` class to each; for rounded corners and shadows use `rounded` and `z-depth-1` classes.
Here's the code for the last row of images above:

{% raw %}

```html
<div class="row justify-content-sm-center">
  <div class="col-sm-8 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
  </div>
  <div class="col-sm-4 mt-3 mt-md-0">
    {% include figure.liquid path="assets/img/11.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
  </div>
</div>
```

{% endraw %}
