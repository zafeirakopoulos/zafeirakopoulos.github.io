---
layout: page
title: Εργασίες
permalink: /topics/
description: Θέματα εργασιών
nav: false
nav_order: 8
---

<!-- pages/topics.md -->

{% include topics_lock.liquid %}

<div class="topics" id="topics-protected" hidden>
  <div class="topics-toolbar">
    <div class="topics-view-switch" role="group" aria-label="Group topics by">
      <button type="button" id="topics-view-category" class="active">By topic</button>
      <button type="button" id="topics-view-difficulty">By difficulty</button>
    </div>
    <div class="topics-legend">
      <span data-difficulty="introductory">Introductory</span>
      <span data-difficulty="easy">Easy</span>
      <span data-difficulty="normal">Normal</span>
      <span data-difficulty="difficult">Difficult</span>
    </div>
  </div>

  <div id="topics-by-category">
    {% assign categories = "Algebra,Geometry,Optimization,Benchmarks,Arithmetic,AI,Combinatorics,Number Theory" | split: "," %}
    {% for cat in categories %}
      {% assign group = site.topics | where: "topic_category", cat | sort: "importance" %}
      {% include topics_group.liquid heading=cat topics=group %}
    {% endfor %}
  </div>

  <div id="topics-by-difficulty" hidden>
    {% assign difficulties = "introductory,easy,normal,difficult" | split: "," %}
    {% for diff in difficulties %}
      {% assign diff_label = diff | capitalize %}
      {% assign group = site.topics | where: "difficulty", diff | sort: "importance" %}
      {% include topics_group.liquid heading=diff_label topics=group %}
    {% endfor %}
  </div>
</div>

<script>
  (function () {
    var STORAGE_KEY = 'topics-view';
    var byCategory = document.getElementById('topics-by-category');
    var byDifficulty = document.getElementById('topics-by-difficulty');
    var categoryButton = document.getElementById('topics-view-category');
    var difficultyButton = document.getElementById('topics-view-difficulty');

    function show(view) {
      var isCategory = view !== 'difficulty';
      byCategory.hidden = !isCategory;
      byDifficulty.hidden = isCategory;
      categoryButton.classList.toggle('active', isCategory);
      difficultyButton.classList.toggle('active', !isCategory);
    }

    categoryButton.addEventListener('click', function () {
      try {
        localStorage.setItem(STORAGE_KEY, 'category');
      } catch (e) {
        /* private mode or storage disabled: choice lasts for this page view only */
      }
      show('category');
    });

    difficultyButton.addEventListener('click', function () {
      try {
        localStorage.setItem(STORAGE_KEY, 'difficulty');
      } catch (e) {
        /* private mode or storage disabled: choice lasts for this page view only */
      }
      show('difficulty');
    });

    var savedView = null;
    try {
      savedView = localStorage.getItem(STORAGE_KEY);
    } catch (e) {
      /* private mode or storage disabled: default view stands */
    }
    if (savedView === 'difficulty') show('difficulty');
  })();
</script>
