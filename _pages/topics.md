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

<!-- pages/topics.md -->
<div class="topics">
{% assign sorted_topics = site.topics | sort: "importance" %}
  {% if page.horizontal %}
    <div class="container">
      <div class="row row-cols-1 row-cols-md-2">
      {% for topic in sorted_topics %}
        {% include topics_horizontal.liquid %}
      {% endfor %}
      </div>
    </div>
    {% else %}
    <div class="row row-cols-1 row-cols-md-3">
      {% for topic in sorted_topics %}
        {% include topics.liquid %}
      {% endfor %}
    </div>
  {% endif %}
</div>
