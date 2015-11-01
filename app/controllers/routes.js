var express = require('express'),
  router = express.Router(),
  mongoose = require('mongoose'),
  Article = mongoose.model('Article');

module.exports = function (app) {
  app.use('/', router);
};

router.get('/', function (req, res, next) {
  Article.find(function (err, articles) {
    if (err) return next(err);
    res.render('index', {
      title: 'Generator-Express MVC',
      articles: articles
    });
  });
});


//MongoDB URI: mongodb://heroku_n8kb4b7b:6919jj9ks1prdkfgih2m1q2fpu@ds045684.mongolab.com:45684/heroku_n8kb4b7b
//Single Node URI Format: mongodb://dbuser:dbpass@host:port/dbname