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
  <li class="post-list-item">
    <a href="{{ item.url | relative_url }}">
      <span class="post-list-title">{{ item.title }}</span>
      <span class="post-list-date">{{ item.period }}</span>
    </a>
    {% if item.summary %}<p class="post-list-excerpt">{{ item.summary }}</p>{% endif %}
  </li>
  {% else %}
  <li class="post-list-empty">No activities yet. Add a file to <code>_activities/</code>.</li>
  {% endfor %}
</ul>
