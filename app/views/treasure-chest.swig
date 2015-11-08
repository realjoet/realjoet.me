<div class="treasure-container" data-order= "{{ loop.index }}">
  <div class="treasure-hero" style="background: url({{ work.treasureHero }}) center center/100%">
    <span class="close-button">X</span>
  </div>
  <div class="treasure-description-container">
    <div class="description-head">
      <h1 class="treasure-description__title">{{ work.title }}</h1>
      <a class="treasure-description__link" href="{{ work.url }}" target="_blank">
        {% if work.live === true %}
          Visit Site
        {% else %}
          Read More
        {% endif %}
      </a>
    </div>
    <h2 class="treasure-description__role">{{ work.role }}</h2>
    <p class="treasure-description__details">{{ work.details }}</p>
  </div>
</div>