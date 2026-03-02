---
layout: page
title: "WELCOME"
subtitle: "Molecular Intra/Intercellular Communication Laboratory"
css:
  - "/assets/css/home.css"
---

<!-- Hero welcome -->
<div class="home-hero">
  <img src="/assets/img/MICL-bac.jpg" alt="MIC Lab" class="home-hero-img">
  <p class="home-hero-kr">충북대학교 의과대학 생화학교실 <strong>세포내외 분자 커뮤니케이션 연구실 (MICL)</strong>에 오신 것을 환영합니다. 저희 연구실은 암 미세환경에서 분자 및 세포 간 커뮤니케이션이 암의 악성화에 미치는 영향을 연구하며 이에 대한 표적 치료법을 발굴하는 연구를 하고 있습니다. </p>
  
  <p class="home-hero-en">Welcome to the <strong>Molecular Intra/Intercellular Communication Laboratory (MICL)</strong> in the Department of Biochemistry at Chungbuk National University Medical School. Our laboratory investigates how molecular and intercellular communication within the tumor microenvironment drives cancer malignancy, with the ultimate goal of discovering novel targeted therapeutics.</p>
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

  <div class="home-col">
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

  <div class="home-col">
    <h3>Latest News</h3>
    <ul class="home-news-ul">
      {% assign news_items = site.data.news | sort: "date" | reverse %}
      {% for item in news_items limit:3 %}
      <li>
        <span class="home-news-date">{{ item.date | date: "%Y.%m.%d" }}</span>
        {{ item.title }}
      </li>
      {% endfor %}
    </ul>
    <a class="home-link" href="/news">More news →</a>
  </div>

</div>

<!-- Contact strip -->
<div class="home-contact-strip">
  <p><strong>Email</strong> &nbsp; mjyeon@chungbuk.ac.kr &nbsp;&nbsp;|&nbsp;&nbsp; <strong>Address</strong> &nbsp; 충북 청주시 흥덕구 오송읍 오송생명1로 194-15, 충북대학교 의과대학 3호관 317호</p>
</div>
