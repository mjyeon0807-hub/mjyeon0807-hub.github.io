---
layout: page
title: "News"
subtitle: "News, seminars, and lab life"
css:
  - "/assets/css/news.css"
---

<div class="news-wrap">

{% assign news_items = site.data.news | sort: "date" | reverse %}

{% for item in news_items %}
<div class="news-card">
  <div class="news-date">
    <span class="news-date-day">{{ item.date | date: "%d" }}</span>
    <span class="news-date-month">{{ item.date | date: "%b %Y" }}</span>
  </div>
  <div class="news-content">
    <h3 class="news-title">
      {% if item.link %}
        <a href="{{ item.link }}" target="_blank" rel="noopener">{{ item.title }}</a>
      {% else %}
        {{ item.title }}
      {% endif %}
    </h3>
    {% if item.tags %}
    <div class="news-tags">
      {% for tag in item.tags %}
        <span class="news-tag">{{ tag }}</span>
      {% endfor %}
    </div>
    {% endif %}
    <p class="news-description">{{ item.description }}</p>
    {% if item.link %}
    <a class="news-read-more" href="{{ item.link }}" target="_blank" rel="noopener">
      Read article <i class="fas fa-external-link-alt"></i>
    </a>
    {% endif %}
  </div>
</div>
{% endfor %}

</div>
