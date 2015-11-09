{% extends 'layout.swig' %}

{% block content %}
  <div class="masthead-background-image clearfix">
    <div class="masthead-container clearfix">
      {% include "masthead.swig" %}
    </div>
  </div>

  <div class="display-section-container">
    <!-- I BUILD SECTION -->
    <h1 class="display-section__headline">I Build</h1>
    <div class="display-section--build clearfix">
      <!-- TEMP DISPLAY SECTION INCLUDE, UNTIL DATA IS CONNECTED -->
      {% include "display-section--build.swig" %}
      {% for work in works %}
        {% if work.type === "build" %}
          {% include "treasure-chest.swig" %}
        {% endif %}
      {% endfor %}
      {% for work in works %}
        {% if work.type === "build" %}
          <div class="display-section__content-hero" data-order= "{{ loop.index }}" style="background: url({{ work.displayHero }} center center/100%"></div>
        {% endif %}
      {% endfor %}
    </div>
    <!-- END I BUILD SECTION -->

    <!-- I WRITE SECTION -->
    <h1 class="display-section__headline">I Write</h1>
    <div class="display-section--write clearfix">
      <!-- TEMP DISPLAY SECTION INCLUDE, UNTIL DATA IS CONNECTED -->
      {% include "display-section--write.swig" %}
      {% for work in works %}
        {% if work.type === "write" %}
          {% include "treasure-chest.swig" %}
        {% endif %}
      {% endfor %}
      {% for work in works %}
        {% if work.type === "write" %}
          <div class="display-section__content-hero" data-order= "{{ loop.index }}" style="background: url({{ work.displayHero }} center center/100%"></div>
        {% endif %}
      {% endfor %}
    </div>
    <!-- END I WRITE SECTION -->

    <!-- I PLAY SECTION -->
    <h1 class="display-section__headline">I Play</h1>
    <div class="display-section--play clearfix">
      <!-- TEMP DISPLAY SECTION INCLUDE, UNTIL DATA IS CONNECTED -->
      {% include "display-section--play.swig" %}
      {% for work in works %}
        {% if work.section === "play" %}
          {% include "treasure-chest.swig" %}
        {% endif %}
      {% endfor %}
      {% for work in works %}
        {% if work.section === "play" %}
          <div class="display-section__content-hero" data-order= "{{ loop.index }}" style="background: url({{ work.displayHero }} center center/100%"></div>
        {% endif %}
      {% endfor %}
    </div>
    <!-- END I BUILD SECTION -->

    <div class="email-section">
      <p>Wanna chat?</p>
      <h1>yo@realjoet.me</h1>
    </div>
  </div>
{% endblock %}
