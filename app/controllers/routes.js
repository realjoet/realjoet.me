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
      title: "realjoet.me",
      description: "Joe Toscano is a UX Designer and Engineer at Quick Left in Boulder, CO. He's also a guest writer for InVision in his spare time. If he can help you in any way, he'd love to.",
      instagram: "https://instagram.com/realjoet",
      twitter: "https://twitter.com/realjoet",
      medium: "https://medium.com/@realjoet",
      github: "https://github.com/realjoet",
      linkedin: "https://www.linkedin.com/profile/view?id=AAIAAA0fQ_YB2Glelzb90wcEo6J64SkOuYXYn54&trk=nav_responsive_tab_profile",
      works: works
    });
  });
});