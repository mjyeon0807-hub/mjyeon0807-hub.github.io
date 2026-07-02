---
title: "Today's Paper"
subtitle: "One paper a day, summarized by the lab"
css:
  - "/assets/css/wiki.css"
  - "/assets/css/paper.css"
---

<div class="wiki-page">

{% assign papers = site.papers | sort: "date" | reverse %}

{% if papers.size > 0 %}

{% assign latest = papers.first %}
<div class="paper-featured-card">
{% if latest.image %}
<div class="paper-featured-image">
<img src="{{ latest.image | relative_url }}" alt="{{ latest.title }}">
</div>
{% endif %}
<div class="paper-featured-content">
<span class="paper-featured-label">Today's Paper &middot; {{ latest.date | date: "%Y.%m.%d" }}</span>
<h3 class="paper-featured-title"><a href="{{ latest.url | relative_url }}">{{ latest.title }}</a></h3>
<p class="paper-featured-meta">
{% if latest.journal %}<span class="paper-journal">{{ latest.journal }}</span>{% endif %}
{% if latest.authors %} &middot; {{ latest.authors }}{% endif %}
</p>
{% if latest.summary %}<p class="paper-featured-summary">{{ latest.summary }}</p>{% endif %}
{% if latest.tags %}
<div class="paper-featured-tags">
{% for tag in latest.tags %}<span class="wiki-tag">{{ tag }}</span>{% endfor %}
</div>
{% endif %}
<a class="paper-read-more" href="{{ latest.url | relative_url }}#comments">
자세히 보기 &amp; 댓글 남기기 <i class="fas fa-arrow-right"></i>
</a>
</div>
</div>

{% assign older_papers = papers | slice: 1, 999 %}
{% if older_papers.size > 0 %}
<h3 class="paper-archive-heading">Previous Papers</h3>
<ul class="paper-archive-list">
{% for item in older_papers %}
<li class="paper-archive-item">
<span class="paper-archive-date">{{ item.date | date: "%Y.%m.%d" }}</span>
<div>
<a href="{{ item.url | relative_url }}">{{ item.title }}</a>
{% if item.journal %}<span class="paper-archive-journal">&middot; {{ item.journal }}</span>{% endif %}
</div>
</li>
{% endfor %}
</ul>
{% endif %}

{% else %}
<p class="paper-empty-state">아직 등록된 논문이 없습니다. 매일 한 편씩 정리해서 올릴 예정이니 곧 만나보실 수 있어요!</p>
{% endif %}

</div>
