---
layout: default
title: Activity
permalink: /activity/
---

<h1>Activity</h1>
<p class="page-desc">Volunteering and community programs I have taken part in.</p>

<ul class="post-list post-list-full">
  {% assign items = site.activities | sort: "date" | reverse %}
  {% for item in items %}
  <li class="post-list-item{% if item.image %} has-thumb{% endif %}">
    {% if item.image %}
    <a href="{{ item.url | relative_url }}" class="post-list-thumb-link" tabindex="-1" aria-hidden="true">
      <img class="post-list-thumb" src="{{ item.image | relative_url }}" alt="">
    </a>
    {% endif %}
    <div class="post-list-main">
      <a href="{{ item.url | relative_url }}">
        <span class="post-list-title">{{ item.title }}</span>
        <span class="post-list-date">{{ item.period }}</span>
      </a>
      {% if item.summary %}<p class="post-list-excerpt">{{ item.summary }}</p>{% endif %}
    </div>
  </li>
  {% else %}
  <li class="post-list-empty">No activities yet.</li>
  {% endfor %}
</ul>
