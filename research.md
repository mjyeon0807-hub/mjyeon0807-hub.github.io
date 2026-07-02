---
title: "Research"
subtitle: "Research themes, glossary, and today's paper"
css:
  - "/assets/css/research-tabs.css"
  - "/assets/css/wiki.css"
  - "/assets/css/paper.css"
js:
  - "/assets/js/wiki-search.js"
  - "/assets/js/research-tabs.js"
---

<ul class="nav nav-tabs research-subtabs" id="researchTabs" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="theme-tab" data-toggle="tab" href="#theme-pane" role="tab" aria-controls="theme-pane" aria-selected="true">Research Theme</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="wiki-tab" data-toggle="tab" href="#wiki-pane" role="tab" aria-controls="wiki-pane" aria-selected="false">Wiki</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="paper-tab" data-toggle="tab" href="#paper-pane" role="tab" aria-controls="paper-pane" aria-selected="false">Today's Paper</a>
  </li>
</ul>

<div class="tab-content" id="researchTabsContent">

  <div class="tab-pane fade show active research-tab-pane" id="theme-pane" role="tabpanel" aria-labelledby="theme-tab" markdown="1">

    ![Research overview](/assets/img/research.png)

    저희 연구실은 암세포 그리고 주변 면역세포들이 방출하는 세포외소포체에 관심이 있으며 세포외 소포체를 통해 방출되는 분자들을 표적으로 하는 항암물질 개발을 목표로 하고 있습니다. 또한, 암 세포 혹은 주변 면역세포내에 존재하는 중추 소기관인 미토콘드리아 항상성 및 역동성에도 관심이 있으며 세포 내 미토콘드리아 변화에 따른 암 세포, 혹은 면역 세포의 기능 변화를 관찰해 이를 표적으로 하는 항암물질 개발을 목표로 하고 있습니다.

    Our laboratory is particularly interested in extracellular vesicles (EVs) secreted by cancer cells and surrounding immune cells. Our goal is to develop novel anti-cancer therapeutics that target the specific molecules released through these EVs. Additionally, we focus on the homeostasis and dynamics of mitochondria, a central organelle in both cancer and neighboring immune cells. By investigating how intracellular mitochondrial alterations drive functional changes in these cells, we aim to develop targeted anti-cancer agents based on these fundamental mechanisms.

  </div>

  <div class="tab-pane fade research-tab-pane" id="wiki-pane" role="tabpanel" aria-labelledby="wiki-tab">

    <div class="wiki-hero-band">
      <p class="wiki-hero-sub">Search a term below to jump straight to its definition and source papers.</p>
      <div class="wiki-search-box">
        <i class="fas fa-search wiki-search-icon" aria-hidden="true"></i>
        <input type="text" id="wiki-search-input" placeholder="Search a term (e.g. anoikis, EMT, trogocytosis)..." autocomplete="off">
      </div>
    </div>

    {% assign terms = site.glossary | sort_natural: "title" %}
    {% assign grouped_terms = terms | group_by_exp: "term", "term.title | slice: 0, 1 | upcase" %}

    <nav class="wiki-az-nav" aria-label="Jump to letter">
      {% for group in grouped_terms %}
        <a href="#wiki-letter-{{ group.name }}">{{ group.name }}</a>
      {% endfor %}
    </nav>

    <p id="wiki-no-results" class="wiki-no-results" style="display:none;">No terms match your search.</p>

    <div id="wiki-term-list" class="wiki-term-list">
      {% for group in grouped_terms %}
        <section id="wiki-letter-{{ group.name }}" class="wiki-letter-section">
          <h2 class="wiki-letter-heading">{{ group.name }}</h2>
          <div class="wiki-term-grid">
            {% for term in group.items %}
              <a class="wiki-term-card" href="{{ term.url | relative_url }}" data-search="{{ term.title | downcase | escape }}">
                {% if term.category %}<span class="wiki-tag">{{ term.category }}</span>{% endif %}
                <h3>{{ term.title }}</h3>
                <p>{{ term.content | strip_html | truncatewords: 20 }}</p>
              </a>
            {% endfor %}
          </div>
        </section>
      {% endfor %}
    </div>

  </div>

  <div class="tab-pane fade research-tab-pane" id="paper-pane" role="tabpanel" aria-labelledby="paper-tab">

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

</div>
