---
layout: default
---
# My Blog

Welcome to my blog! Here are my latest posts:


    {% for post in site.remote_posts %}
    <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
    <p>{{ post.date | date: "%B %d, %Y" }}</p>
    <p>{{ post.excerpt }}</p>
  {% endfor %}


