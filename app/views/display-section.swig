{% extends 'index.swig' %}

{% block display-content %}
	<div class="display-content__hero">
		<h1 class="content-title">{{ work.title }}</h1>
		<h2 class="content-role">{{ work.role }}</h2>
		<p class="content-description">{{ work.description }}</p>
	</div>
{% endblock %}