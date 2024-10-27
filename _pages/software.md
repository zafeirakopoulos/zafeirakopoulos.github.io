---
layout: page
permalink: /software/
title: Software
description: In this page you can find software/code I have developed or contributed to (from a leading position). All projects are open source under either GNU GPL or MIT licenses (as indicated in each project). 
nav: true
nav_order: 4
---
 


# Polyhedral Omega

The Polyhedral Omega algorithm presented in ["Polyhedral Omega: a New Algorithm for Solving Linear Diophantine Systems"](https://link.springer.com/article/10.1007/s00026-017-0349-x) (joint work with Felix Breuer) is implemented originally in Python/Sage and currently developed in JuliaLang with other members of the alcyon lab.

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
    {% include repository/repocomment.liquid repository="alcyon-lab/PolyhedralOmega.jl" comment="Actively developed as part of alcyon.jl" %}
    {% include repository/repocomment.liquid repository="alcyon-lab/PolyhedralOmegaMono" comment="Actively developed as standalone package" %}
    {% include repository/repocomment.liquid repository="fbreuer/polyhedral-omega-sage" comment="Outdated Python/Sage implementation" %}
</div> 

# Polyhedral Omega for Optimization

The first implementation of Polyhedral Omega applied to ILP (Integer Linear Programming).
Still under heavy development as an alcyon.jl package.
Presented in ISSAC 2024 (software presentation).  

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
    {% include repository/repocomment.liquid repository="alcyon-lab/Optimization.jl" comment="Very unstable. Use at own risk." %}
</div> 


# PTOPO

The Maple package for the implementation of the algorithm presented in [PTOPO: Computing the geometry and the topology of parametric curve](https://doi.org/10.1016/j.jsc.2022.08.012) (joint work with Christina Katsamaki, Fabrice Rouillier and Elias Tsigaridas).
See [the page of the project](http://webusers.imj-prg.fr/~christina.katsamaki/ptopo/) for more information and nice pictures.

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
    {% include repository/repocomment.liquid repository="zafeirakopoulos/PTOPO" comment="" %}
</div> 



# math-data

math-data is a project providing the infrastructure for a database of version-controlled mathematical data and datasets.
The primary motivation for us was benchmarking mathematical software as well as training machine learning models.

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
    {% include repository/repocomment.liquid repository="zafeirakopoulos/math-data" comment="" %}
</div> 

math-data both as a project and as codebase grew out of years of benchmarking my code against existing implementations.
Everyone wants to see benchmarks, but nobody wants to do them because it is a lot of work (that doesn't count academically). 

My first attempt to organize a benchmarking system can be found in benchit (but only for historical reasons, not production stable/tested).
<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
    {% include repository/repocomment.liquid repository="zafeirakopoulos/benchit" comment="Only a curiosity. Do not use." %}
</div> 


# ALCYON


https://github.com/alcyon-lab/AlcyonRegistry

https://github.com/alcyon-lab/AlcyonPkgTemplate.jl


alcyon-lab/SymbolicMatrices.jl
# LaTeX

LaTeX is excellent for increasing productivity, except if you enjoy writing macros/packages too much. 
Out of the countless hours I wasted writing macros for the future, here are some that may be useful to others.

## Polyhedra.sty

A LaTeX package for drawing polyhedra (and polytopes and cones and hyperplanes) in tikz. 
Grew out of my macros collection while writing my thesis.
[Available in CTAN.](https://ctan.org/pkg/polyhedra)

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
    {% include repository/repo.liquid repository="alcyon-lab/tikz-polyhedra" %}
</div> 

## Gebze Technical University LaTeX styles

 <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
    {% include repository/repocomment.liquid repository="zafeirakopoulos/gtu-presentation" comment="Beamer style file for the Final Project (Bitirme Projesi)" %}
    {% include repository/repocomment.liquid repository="zafeirakopoulos/gtu-latex-styles" comment="Latex styles for BAP research project reports" %}
</div> 


# Other 


 <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
    {% include repository/repocomment.liquid repository="zafeirakopoulos/wpri" comment="Wordpress plugin to create a research institution management system and webpage. Probably outdated." %}
</div> 





 
 
 

 <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for user in site.data.repositories.github_users %}
    {% include repository/repo_user.liquid username=user %}
  {% endfor %}
</div>


 
