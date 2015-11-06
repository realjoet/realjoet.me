{% extends 'layout.swig' %}

{% block content %}
  <div class="masthead-background-image clearfix">
    <div class="masthead-container clearfix">
      {% include "masthead.swig" %}
    </div>
  </div>

  <div class="display-section-container">
    <h1 class="display-section__headline">I Build</h1>
    <div class="display-section--build clearfix">
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      {% include "treasure-chest.swig" %}
      {% for work in works %}
        {% if work.type === "build" %}
          <div class="display-section__content-hero"></div>
        {% endif %}
      {% endfor %}
    </div>

    <h1 class="display-section__headline">I Write</h1>
    <div class="display-section--write clearfix">
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      {% include "treasure-chest.swig" %}
      {% for work in works %}
        {% if work.type === "write" %}
          <div class="display-section__content-hero"></div>
        {% endif %}
      {% endfor %}
    </div>

    <h1 class="display-section__headline">I Play</h1>
    <div class="display-section--play clearfix">
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      <div class="display-section__content-hero"></div>
      {% include "treasure-chest.swig" %}
      {% for work in works %}
        {% if work.type === "play" %}
          <div class="display-section__content-hero"></div>
        {% endif %}
      {% endfor %}
    </div>
  </div>
{% endblock %}
