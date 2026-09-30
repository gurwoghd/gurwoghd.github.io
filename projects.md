---
layout: default
title: 프로젝트
permalink: /projects/
---

<h1>프로젝트</h1>
<p class="page-desc">진행 중이거나 완료한 연구 프로젝트 목록입니다.</p>

<ul class="project-list">
  {% for project in site.projects %}
  <li class="project-card">
    <a href="{{ project.url | relative_url }}">
      <span class="project-card-title">{{ project.title }}</span>
      {% if project.status %}<span class="tag status-{{ project.status }}">{{ project.status }}</span>{% endif %}
    </a>
    {% if project.summary %}<p class="project-card-summary">{{ project.summary }}</p>{% endif %}
  </li>
  {% else %}
  <li class="post-list-empty">아직 등록된 프로젝트가 없습니다. <code>_projects/</code> 폴더에 항목을 추가해보세요.</li>
  {% endfor %}
</ul>
