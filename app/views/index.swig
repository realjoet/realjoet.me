{% extends 'layout.swig' %}

{% block content %}
  <div class="masthead-container">
    {% include "masthead.swig" %}
  </div>

  <div class="display-section--build">
    <h1 class="display-section__headline">I Build</h1>
    {% for work in works %}
      {% if work.type === "build" %}
        {% include "display-section.swig" %}
      {% endif %}
    {% endfor %}
  </div>

  <div class="display-section--write">
    <h1 class="display-section__headline">I Write</h1>
    {% include "treasure-chest.swig" %}
    {% for work in works %}
      {% if work.type === "write" %}
        {% include "display-section.swig" %}
      {% endif %}
    {% endfor %}
  </div>

  <div class="display-section--play">
    <h1 class="display-section__headline">I Play</h1>
    {% include "treasure-chest.swig" %}
    {% for work in works %}
      {% if work.type === "play" %}
        {% include "display-section.swig" %}
      {% endif %}
    {% endfor %}
  </div>
{% endblock %}
