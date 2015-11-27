<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
  <title>{{ title }}</title>
  <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="/css/styles.css">
  <script src="//load.sumome.com/" data-sumo-site-id="d351e209bd8add1eea3d248127257d703bd0878752e2f13b8d17d1c1149c33ee" async="async"></script>
  {% if ENV_DEVELOPMENT %}
    <script src="http://localhost:35729/livereload.js"></script>
  {% endif %}
</head>
<body>
  {% block content %}{% endblock %}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="/js/treasure-chest--basic.js"></script>
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-69915101-1', 'auto');
    ga('send', 'pageview');

  </script>
  <script>
    $(function() {
      $('body').on('mouseleave', function(){
        console.log("mouse out");
      })
    })
  </script>
</body>
</html>
