---
layout: home
title: "MIC Lab"
subtitle: "Molecular Intra/Intercellular Communication Laboratory"
css:
  - "/assets/css/home.css"
---

<!-- Hero welcome -->
<div class="home-hero">
  <h2>Welcome to MIC Lab</h2>
  <p class="home-hero-en">We investigate how molecular and cellular communication shapes disease biology, with a focus on <strong>cancer</strong> and <strong>immunity</strong>.</p>
  <p class="home-hero-kr">충북대학교 의과대학 생화학교실 <strong>세포내외 분자 커뮤니케이션 연구실 (MICL)</strong>에 오신 것을 환영합니다. 저희 연구실은 암과 면역을 중심으로 분자 및 세포 간 커뮤니케이션이 질병 생물학에 미치는 영향을 연구하고 있습니다.</p>
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

<!-- Two-column: PI + Latest News side by side -->
<div class="home-columns">

  <div class="home-col home-col-pi">
    <h3>Principal Investigator</h3>
    <div class="home-pi-block">
      <img src="/assets/img/pi.jpg" alt="Minjeong Yeon" class="home-pi-img">
      <div>
        <p class="home-pi-name">Minjeong Yeon, Ph.D.</p>
        <p class="home-pi-title">Assistant Professor<br>Department of Biochemistry<br>Chungbuk National University College of Medicine</p>
      </div>
    </div>
  </div>

  <div class="home-col home-col-news">
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
