var path = require('path'),
    rootPath = path.normalize(__dirname + '/..'),
    env = process.env.NODE_ENV || 'development';

var config = {
  development: {
    root: rootPath,
    app: {
      name: 'realjoet-me'
    },
    port: 3000,
    //MongoDB URI: mongodb://heroku_n8kb4b7b:6919jj9ks1prdkfgih2m1q2fpu@ds045684.mongolab.com:45684/heroku_n8kb4b7b
    //Find out more about URI and DB connection here: https://devcenter.heroku.com/articles/mongolab#connecting-to-existing-mongolab-deployments-from-heroku
    db: 'mongodb://heroku_n8kb4b7b:6919jj9ks1prdkfgih2m1q2fpu@ds045684.mongolab.com:45684/heroku_n8kb4b7b'
  },

  test: {
    root: rootPath,
    app: {
      name: 'realjoet-me'
    },
    port: 3000,
    db: 'mongodb://localhost/realjoet-me-test'
  },

  production: {
    root: rootPath,
    app: {
      name: 'realjoet-me'
    },
    port: process.env.PORT,
    db: process.env.MONGOLAB_URI
  }
};

module.exports = config[env];
