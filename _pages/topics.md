---
layout: page
title: Εργασίες
permalink: /topics/
description: Θέματα εργασιών
nav: true
nav_order: 8
display_categories: 
horizontal: false
---

<!-- pages/projects.md -->
<div class="topics">
{% assign sorted_topics = site.topics | sort: "importance" %}
  <!-- Generate cards for each project -->
  {% if page.horizontal %}
    <div class="container">
      <div class="row row-cols-1 row-cols-md-2">
      {% for topic in sorted_topics %}
        {% include projects_horizontal.liquid %}
      {% endfor %}
      </div>
    </div>
    {% else %}
    <div class="row row-cols-1 row-cols-md-3">
      {% for topic in sorted_topics %}
        {% include projects.liquid %}
      {% endfor %}
    </div>
  {% endif %}
</div>
