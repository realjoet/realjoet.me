<div class="treasure-container">
  <div class="treasure-hero" style="background: url({{ work.image }} center center/100%">
    <span class="close-button">X</span>
  </div>
  <div class="treasure-description-container">
    <h1 class="treasure-description__title">{{ work.title }}</h1>
    <a class="treasure-description__link" href="{{ work.url }}" target="_blank">
      {% if work.live === true %}
        Visit Site
      {% else %}
        Read More
      {% endif %}
    </a>
    <h2 class="treasure-description__role">{{ work.role }}</h2>
    <p class="treasure-description__details">{{ work.details }}</p>
  </div>
</div>