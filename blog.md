---
layout: directory
title: Blog
---

{% for post in site.posts %}
  * {{ post.date | date_to_string }} &raquo; [ {{ post.title }} ]({{ site.url }}{{ post.url }})
{% endfor %}