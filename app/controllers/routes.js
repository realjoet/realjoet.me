var express = require('express'),
  router = express.Router(),
  mongoose = require('mongoose'),
  Work = mongoose.model('Work');

module.exports = function (app) {
  app.use('/', router);
};

router.get('/', function (req, res, next) {
  Work.find(function (err, works) {
    if (err) return next(err);
    res.render('index', {
      title: 'Work Title',
      work: works
    });
  });
});