var gulp = require('gulp'),
  nodemon = require('gulp-nodemon'),
  plumber = require('gulp-plumber'),
  livereload = require('gulp-livereload'),
  sass = require('gulp-ruby-sass');

// Changed to pipe Sass from app directory
gulp.task('sass', function () {
  return sass('./app/styles/*.scss')
    .pipe(gulp.dest('./public/css'))
    .pipe(livereload());
});

// NEED TO PIPE JS AND ASSETS TO ./PUBLIC

// gulp.task('js', function () {
//   return js('./app/js/*.js')
//     .pipe(gulp.dest('./public/js'))
//     .pipe(livereload());
// })

// gulp.task('.img', function () {
//   return img('.app/assets/**/*.jpg')
//     .pipe(gulp.dest('./public/img'))
//     .pipe(livereload);
// })

gulp.task('watch', function() {
  gulp.watch('./app/styles/**/*.scss', ['sass']);
  // gulp.watch('./app/js/*.js', ['js']);
  // gulp.watch('./app/assets/**/*.jpg', ['img']);
});

gulp.task('develop', function () {
  livereload.listen();
  nodemon({
    script: 'app.js',
    ext: 'js coffee swig',
    stdout: false
  }).on('readable', function () {
    this.stdout.on('data', function (chunk) {
      if(/^Express server listening on port/.test(chunk)){
        livereload.changed(__dirname);
      }
    });
    this.stdout.pipe(process.stdout);
    this.stderr.pipe(process.stderr);
  });
});

gulp.task('default', [
  'sass',
  // 'js',
  'develop',
  'watch'
]);
