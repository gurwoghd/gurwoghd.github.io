---
layout: default
title: Research
permalink: /research/
---

<h1>Research</h1>
<p class="page-desc">Papers and research projects.</p>

<ul class="research-list">
  {% for item in site.research %}
  <li class="research-card">
    {% if item.image %}
    <a href="{{ item.url | relative_url }}" class="research-card-image-link">
      <img class="research-card-image" src="{{ item.image | relative_url }}" alt="{{ item.title }}">
    </a>
    {% endif %}
    <div class="research-card-body">
      <a href="{{ item.url | relative_url }}" class="research-card-title">{{ item.title }}</a>
      {% if item.status %}<span class="tag status-{{ item.status | slugify }}">{{ item.status }}</span>{% endif %}
      {% if item.abstract %}<p class="research-card-abstract">{{ item.abstract }}</p>{% endif %}
      {% if item.paper_url %}
      <a class="paper-link" href="{{ item.paper_url }}" target="_blank" rel="noopener">View Paper →</a>
      {% endif %}
    </div>
  </li>
  {% else %}
  <li class="post-list-empty">No research listed yet. Add an entry to <code>_research/</code>.</li>
  {% endfor %}
</ul>
