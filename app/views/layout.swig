<!doctype html>
<html lang="en" class="no-js">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
  <title>{{ title }}</title>
  <meta name="description" content="{{ description }}">
  {# ADD META IMAGE AT LEAST 600x315 AND FAVICON #}
  {# <meta property="og:image" content="http://graphics.myfavnews.com/images/logo-100x100.jpg" /> #}
  {# <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" /> #}
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
  <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|Bangers' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="/css/styles.css">
  {% if ENV_DEVELOPMENT %}
    <script src="http://localhost:35729/livereload.js"></script>
  {% endif %}
</head>
<body>
  {% block content %}{% endblock %}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="/js/modernizr-settings.js"></script>
  <script src="/js/main.js"></script>
  <script src="/js/treasure-chest--basic.js"></script>
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-69915101-1', 'auto');
    ga('send', 'pageview');

    $('display-section__content-hero').click(function(){
      var $id = $(this).data('order');

      ga('send', 'event', 'Clicks', 'Content Hero' + $id, 'Opened' + $id);
    })

  </script>
  <script>
      $('body').on('mouseleave', function(){
        console.log("mouse out");
      })
    })
  </script>
</body>
</html>
