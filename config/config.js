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
    db: 'mongodb://localhost/realjoet-me-development'
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
    port: 3000,
    db: 'mongodb://localhost/realjoet-me-production'
  }
};

module.exports = config[env];
