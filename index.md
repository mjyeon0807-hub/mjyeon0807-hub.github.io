---
layout: page
title: "WELCOME"
subtitle: "Molecular Intra/Intercellular Communication Laboratory"
css:
  - "/assets/css/home.css"
top-banner: "/assets/img/recruiting%20banner_2_1.png"
top-banner-alt: "대학원생, 학부생인턴 모집"
top-banner-link: "/news/recruitment-2026/"
---

<!-- Hero welcome -->
<div class="home-hero">
  <div class="home-hero-photo">
    <img src="/assets/img/MICL-bac.png" alt="MIC Lab" class="home-hero-img">
  </div>
  <div class="home-hero-text">
    <p class="home-hero-kr">충청북도 오송에 위치한 충북대학교 의과대학 생화학교실 세포내외분자소통연구실 (Molecular Intra/intercellular Communication Laboratory, MICL)에 오신 것을 환영합니다. MIC("마이크")의 역할처럼 저희가 하는 '작은 연구가 퍼져나가길 바라는 마음'으로, 그리고 그 연구가 '사람의 질병을 치유하는데 도움'이 될 수 있었으면 좋겠다라는 마음을 담아 연구실 이름을 지었습니다.  
    
    저희 연구실은 세포 안에서, 그리고 조직 내의 여러 세포간 일어나는 분자 커뮤니케이션에 대한 연구를 하고있습니다. 특히, 세포호흡의 중추인 미토콘드리아와 세포가 밖으로 분비하는 세포외소포체에 관심을 가지고 있으며 이를 암을 포함한 다양한 질병과 연관지어 치료제에 대한 내성 극복, 그리고 표적 치료제 발굴을 목표로 하고 있습니다. </p>

  </div>
</div>

<!-- Research keywords as a visual band -->
<div class="home-band">
  <div class="home-band-inner">
    <span class="home-kw">Tumor Microenvironment</span>
    <span class="home-kw-dot">·</span>
    <span class="home-kw">Extracellular Vesicles</span>
    <span class="home-kw-dot">·</span>
    <span class="home-kw">Cancer Immunology</span>
    <span class="home-kw-dot">·</span>
    <span class="home-kw">Mitochondria Fitness</span>
  </div>
</div>

<!-- Two-column: Latest Publications + Latest News -->
<div class="home-columns">

  <div class="home-col home-col-pub">
    <h3>Latest Publications</h3>
    <ul class="home-pub-ul">
      {% assign pubs = site.data.publications | sort: "year" | reverse %}
      {% for pub in pubs limit:3 %}
      <li>
        <span class="home-pub-year">{{ pub.year }}</span>
        <div class="home-pub-info">
          <p class="home-pub-title">
            {% if pub.url and pub.url != "" %}
              <a href="{{ pub.url }}" target="_blank" rel="noopener">{{ pub.title }}</a>
            {% elsif pub.doi and pub.doi != "" %}
              <a href="https://doi.org/{{ pub.doi }}" target="_blank" rel="noopener">{{ pub.title }}</a>
            {% else %}
              {{ pub.title }}
            {% endif %}
          </p>
          {% if pub.journal and pub.journal != "" %}
          <p class="home-pub-journal">{{ pub.journal }}</p>
          {% endif %}
        </div>
      </li>
      {% endfor %}
    </ul>
    <a class="home-link" href="/publications">View all publications →</a>
  </div>

  <div class="home-col home-col-news">
    <h3>Latest News</h3>
    <ul class="home-news-ul">
      {% assign news_items = site.news | sort: "date" | reverse %}
      {% for item in news_items limit:5 %}
      <li>
        <span class="home-news-date">{{ item.date | date: "%Y.%m.%d" }}</span>
        <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
      </li>
      {% endfor %}
    </ul>
    <a class="home-link" href="/news">More news →</a>
  </div>

</div>

<!-- Goal banner -->
<div class="home-banner">
  <img src="/assets/img/banner_goal.png" alt="우리들이 하는 분자수준의 연구가 퍼져나가 세상에 도움이 되길 · 우리가 행복해야 위리의 연구도 가치가 있다 · 답이 정해지지 않은 것에 대한 물음, 우리는 즐긴다" class="home-banner-img">
</div>

<!-- Contact strip -->
<div class="home-contact-strip">
  <p><strong>Email</strong> &nbsp; mjyeon@chungbuk.ac.kr &nbsp;&nbsp;|&nbsp;&nbsp; <strong>Address</strong> &nbsp; 충북 청주시 흥덕구 오송읍 오송생명1로 194-15, 충북대학교 의과대학 3호관 317호</p>
</div>
