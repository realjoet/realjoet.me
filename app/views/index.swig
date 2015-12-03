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
          <div class="display-section__content-hero" data-order= "{{ work.id }}" style="background: url({{ work.displayHero }} center center/100%"></div>
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
    <!-- END I PLAY SECTION -->

    <h1 class="display-section__headline">I Hunt</h1>
    <div class="display-section--contact clearfix">
      <!-- Begin MailChimp Signup Form -->
      <link href="//cdn-images.mailchimp.com/embedcode/classic-081711.css" rel="stylesheet" type="text/css">
      <div id="mc_embed_signup">
      <form action="//realjoet.us12.list-manage.com/subscribe/post?u=c97cc3bd0015d447d4d930f4c&amp;id=e542dc22e5" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
        <p id="mc-embed-cta">
          As a UX Designer & Engineer at Quick Left, one of the top software consultancies in Colorado, and guest blogger at InVision, one of the most popular design blogs in the world, I'm constantly hunting for new, innovative material to help me evolve and grow.
          <br>
          <br>
          By signing up you'll get access to the articles I write and assets I build before anyone else, along with articles that have helped me along the way.
          <br>
          <br>
          But this isn't one-way, we're in this together. Let me know what you would like to learn about or how I could help you, and I'll do everything I can to help you reach your goals.
          <br>
          <br>
          Alone we may succeed, but together we feast.
          <br>
          <br>
          Sign up to join <strong><em>The Hunt</em></strong>.
        </p>
        <div id="mc_embed_signup_scroll">
        <div class="indicates-required"><span class="asterisk--blue">*</span> Required to join <strong><em>The Hunt</em><strong></div>
        <div class="mc-field-group">
          <label for="mce-EMAIL">Email Address  <span class="asterisk--blue">*</span>
        </label>
          <input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL">
        </div>
        <div class="mc-field-group">
          <label for="mce-FNAME">First Name </label>
          <input type="text" value="" name="FNAME" class="" id="mce-FNAME">
        </div>
        <div class="mc-field-group">
          <label for="mce-LNAME">Last Name </label>
          <input type="text" value="" name="LNAME" class="" id="mce-LNAME">
        </div>
        <div class="mc-field-group input-group">
            <strong>Email Format </strong>
            <ul>
              <li><input type="radio" value="html" name="EMAILTYPE" id="mce-EMAILTYPE-0"><label for="mce-EMAILTYPE-0">html</label></li>
              <li><input type="radio" value="text" name="EMAILTYPE" id="mce-EMAILTYPE-1"><label for="mce-EMAILTYPE-1">text</label></li>
            </ul>
        </div>
          <div id="mce-responses" class="clear">
            <div class="response" id="mce-error-response" style="display:none"></div>
            <div class="response" id="mce-success-response" style="display:none"></div>
          </div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
            <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_c97cc3bd0015d447d4d930f4c_e542dc22e5" tabindex="-1" value=""></div>
            <div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
            </div>
        </form>
        </div>

      <!--End mc_embed_signup-->
     
      <p class="lets-chat--text">Wanna chat?</p>
      <h1 class="lets-chat--email">yo@realjoet.me</h1>
    </div>
    <!-- END I PLAY SECTION -->
  </div>
{% endblock %}
