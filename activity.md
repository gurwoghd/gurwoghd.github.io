---
layout: default
title: Activity
permalink: /activity/
---

<h1>Activity</h1>
<p class="page-desc">Volunteering, community programs, and creative projects I have taken part in.</p>

{% assign items = site.activities | sort: "date" | reverse %}
{% assign all_tags = "" | split: "" %}
{% for item in items %}{% if item.tags %}{% assign all_tags = all_tags | concat: item.tags %}{% endif %}{% endfor %}
{% assign all_tags = all_tags | uniq | sort_natural %}

{% if all_tags.size > 0 %}
<div class="tag-filter" id="tag-filter" role="group" aria-label="Filter by category">
  <button type="button" class="tag is-active" data-tag="" aria-pressed="true">all</button>
  {% for tag in all_tags %}<button type="button" class="tag" data-tag="{{ tag | escape }}" aria-pressed="false">{{ tag }}</button>
  {% endfor %}
</div>
{% endif %}

<ul class="post-list post-list-full" id="activity-list">
  {% for item in items %}
  <li class="post-list-item{% if item.image %} has-thumb{% endif %}" data-tags="{{ item.tags | join: '|' | escape }}">
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

<script>
(function () {
  var filter = document.getElementById('tag-filter');
  if (!filter) return;
  var buttons = filter.querySelectorAll('button');
  var items = document.querySelectorAll('#activity-list .post-list-item');

  filter.addEventListener('click', function (e) {
    var btn = e.target.closest('button');
    if (!btn) return;
    var tag = btn.getAttribute('data-tag');
    buttons.forEach(function (b) {
      var on = b === btn;
      b.classList.toggle('is-active', on);
      b.setAttribute('aria-pressed', on ? 'true' : 'false');
    });
    items.forEach(function (li) {
      var tags = (li.getAttribute('data-tags') || '').split('|');
      li.hidden = tag !== '' && tags.indexOf(tag) === -1;
    });
  });
})();
</script>
