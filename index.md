---
layout: home
title: "MIC Lab"
subtitle: "Molecular Intra/Intercellular Communication Laboratory"
css:
  - "/assets/css/home.css"
---

<div class="home-wrap">

  <!-- Welcome -->
  <div class="home-section home-welcome">
    <h2><i class="fas fa-flask"></i> Welcome</h2>
    <div class="home-body">
      <p>Welcome to the <strong>Molecular Intra/Intercellular Communication Laboratory (MICL)</strong>, a.k.a. <strong>MIC Lab</strong>, at <strong>Chungbuk National University, College of Medicine, Department of Biochemistry</strong>.</p>
      <p>We investigate how molecular and cellular communication shapes disease biology, with a focus on cancer and immunity.</p>
      <p>충북대학교 의과대학 생화학교실 <strong>세포내외 분자 커뮤니케이션 연구실 (MICL)</strong>에 오신 것을 환영합니다. 저희 연구실은 암과 면역을 중심으로 분자 및 세포 간 커뮤니케이션이 질병 생물학에 미치는 영향을 연구하고 있습니다.</p>
    </div>
  </div>

  <!-- Research Keywords -->
  <div class="home-section home-research">
    <h2><i class="fas fa-microscope"></i> Research Keywords</h2>
    <div class="home-body">
      <div class="home-keywords">
        <span class="home-keyword">Tumor Microenvironment</span>
        <span class="home-keyword">Extracellular Vesicles</span>
        <span class="home-keyword">Cancer Immunology</span>
        <span class="home-keyword">Mitochondria Fitness</span>
      </div>
    </div>
  </div>

  <!-- Principal Investigator -->
  <div class="home-section home-pi">
    <h2><i class="fas fa-user"></i> Principal Investigator</h2>
    <div class="home-body home-pi-row">
      <div class="home-pi-photo">
        <img src="/assets/img/pi.jpg" alt="Minjeong Yeon">
      </div>
      <div class="home-pi-info">
        <p class="home-pi-name">Minjeong Yeon, Ph.D.</p>
        <p>Assistant Professor, Department of Biochemistry<br>
        Chungbuk National University College of Medicine</p>
      </div>
    </div>
  </div>

  <!-- Latest News -->
  <div class="home-section home-news">
    <h2><i class="fas fa-newspaper"></i> Latest News</h2>
    <div class="home-body">
      <ul class="home-news-list">
        {% assign news_items = site.data.news | sort: "date" | reverse %}
        {% for item in news_items limit:3 %}
        <li>
          <span class="home-news-date">{{ item.date | date: "%Y-%m-%d" }}</span>
          {% if item.link %}
            <a href="{{ item.link }}" target="_blank" rel="noopener">{{ item.title }}</a>
          {% else %}
            {{ item.title }}
          {% endif %}
        </li>
        {% endfor %}
      </ul>
      <a class="home-more-link" href="/news">View all news <i class="fas fa-arrow-right"></i></a>
    </div>
  </div>

  <!-- Contact -->
  <div class="home-section home-contact">
    <h2><i class="fas fa-envelope"></i> Contact</h2>
    <div class="home-body">
      <p><strong>Email:</strong> mjyeon@chungbuk.ac.kr</p>
      <p><strong>Address:</strong> 충북 청주시 흥덕구 오송읍 오송생명1로 194-15, 충북대학교 의과대학 3호관 317호 (28160)</p>
    </div>
  </div>

</div>
