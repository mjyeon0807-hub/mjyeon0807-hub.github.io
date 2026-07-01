---
layout: page
title: "News"
subtitle: "News, seminars, and lab life"
css:
  - "/assets/css/news.css"
---

<div class="news-wrap">

{% assign news_items = site.news | sort: "date" | reverse %}

{% for item in news_items %}
<div class="news-card">
  <div class="news-date">
    <span class="news-date-day">{{ item.date | date: "%d" }}</span>
    <span class="news-date-month">{{ item.date | date: "%b %Y" }}</span>
  </div>
  <div class="news-content">
    <h3 class="news-title"><a href="{{ item.url | relative_url }}">{{ item.title }}</a></h3>
    {% if item.tags %}
    <div class="news-tags">
      {% for tag in item.tags %}
        <span class="news-tag">{{ tag }}</span>
      {% endfor %}
    </div>
    {% endif %}
    {%- assign news_sentences = item.description | split: ". " -%}
    {%- if news_sentences.size > 3 -%}
      {%- assign news_preview = news_sentences | slice: 0, 3 | join: ". " | append: "." -%}
    {%- else -%}
      {%- assign news_preview = item.description -%}
    {%- endif -%}
    <p class="news-description">{{ news_preview }}</p>
    <a class="news-read-more" href="{{ item.url | relative_url }}">
      자세히 보기 <i class="fas fa-arrow-right"></i>
    </a>
  </div>
  <div class="news-image">
    {% if item.image %}
      <img src="{{ item.image }}" alt="{{ item.title }}">
    {% endif %}
  </div>
</div>
{% endfor %}

</div>
