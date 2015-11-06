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
      {% include "treasure-chest.swig" %}
      {% for work in works %}
        {% if work.type === "build" %}
          {% include "display-section.swig" %}
        {% endif %}
      {% endfor %}
    </div>

    <h1 class="display-section__headline">I Write</h1>
    <div class="display-section--write clearfix">
      {% include "treasure-chest.swig" %}
      {% for work in works %}
        {% if work.type === "write" %}
          {% include "display-section.swig" %}
        {% endif %}
      {% endfor %}
    </div>

    <h1 class="display-section__headline">I Play</h1>
    <div class="display-section--play clearfix">
      {% include "treasure-chest.swig" %}
      {% for work in works %}
        {% if work.type === "play" %}
          {% include "display-section.swig" %}
        {% endif %}
      {% endfor %}
    </div>
  </div>
{% endblock %}
