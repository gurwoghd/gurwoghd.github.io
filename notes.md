---
layout: default
title: Notes
permalink: /notes/
---

<h1>Notes</h1>
<p class="page-desc">Research notes, paper summaries, and things I'm learning.</p>

<ul class="post-list post-list-full">
  {% for post in site.posts %}
  <li class="post-list-item">
    <a href="{{ post.url | relative_url }}">
      <span class="post-list-title">{{ post.title }}</span>
      <span class="post-list-date">{{ post.date | date: "%b %-d, %Y" }}</span>
    </a>
    {% if post.excerpt %}<p class="post-list-excerpt">{{ post.excerpt | strip_html | truncate: 120 }}</p>{% endif %}
  </li>
  {% else %}
  <li class="post-list-empty">No notes yet.</li>
  {% endfor %}
</ul>
