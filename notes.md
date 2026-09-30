---
layout: default
title: 연구노트
permalink: /notes/
---

<h1>연구노트</h1>
<p class="page-desc">연구 기록, 논문 요약, 학습 노트를 모아둔 곳입니다.</p>

<ul class="post-list post-list-full">
  {% for post in site.posts %}
  <li class="post-list-item">
    <a href="{{ post.url | relative_url }}">
      <span class="post-list-title">{{ post.title }}</span>
      <span class="post-list-date">{{ post.date | date: "%Y.%m.%d" }}</span>
    </a>
    {% if post.excerpt %}<p class="post-list-excerpt">{{ post.excerpt | strip_html | truncate: 120 }}</p>{% endif %}
  </li>
  {% else %}
  <li class="post-list-empty">아직 작성된 글이 없습니다. <code>_posts/</code> 폴더에 <code>YYYY-MM-DD-제목.md</code> 형식으로 첫 글을 추가해보세요.</li>
  {% endfor %}
</ul>
