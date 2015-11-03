{% extends 'layout.swig' %}

{% block content %}
  <h1>{{ title }}</h1>
  <p>Welcome to {{ title }}</p>

  <div class="masthead-container">
  	{% block masthead-content %}{% endblock %}
  </div>

  <div class="display-section--build">
  	<h1 class="display-section--header">I Build</h1>
  	{% for work in works %}
  		{% if work.type === "build" %}
  			{% block display-content %}{% endblock %}
  		{% endif %}
  	{% endfor %}
  </div>

  <div class="display-section--write">
  	<h1 class="display-section--header">I Write</h1>
  	{% for work in works %}
  		{% if work.type === "write" %}
  			{% block display-content %}{% endblock %}
  		{% endif %}
  	{% endfor %}
  </div>

  <div class="display-section--play">
  	<h1 class="display-section--header">I Play</h1>
  	{% for work in works %}
  		{% if work.type === "play" %}
  			{% block display-content %}{% endblock %}
  		{% endif %}
  	{% endfor %}
  </div>
{% endblock %}
