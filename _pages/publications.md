---
layout: page
permalink: /publications/
title: Publications
description: 
yearsa: [2020, 2018]
yearsb: [2020, 2017]
yearsc: [2013, 2012]
---

<h4>Peer Reviewed Publications<h4/>

{% for y in page.yearsa %}
  <h4 class="year">{{y}}</h4>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

<h4>Books and Book Chapters<h4/>

{% for y in page.yearsb %}
  <h4 class="year">{{y}}</h4>
  {% bibliography -f books -q @*[year={{y}}]* %}
{% endfor %}


<h4>Other Publications<h4/>

{% for y in page.yearsc %}
  <h4 class="year">{{y}}</h4>
  {% bibliography -f other -q @*[year={{y}}]* %}
{% endfor %}



