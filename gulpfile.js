// Requires:
var base64 = require('gulp-base64');
var concat = require('gulp-concat');
var cssmin = require('gulp-minify-css');
var gulp = require('gulp');
var sass = require('gulp-sass');

// Setup:
var paths = {
  frontend: {
    scss: {
      dest: 'frontend/html/css/',
      min: {
        dest: 'app.min.css',
        src: 'app.css'
      },
      src: ['frontend/scss/**/*.scss']
    }
  }
};

gulp.task('scss', function() {
  var path = paths.frontend.scss;

  return gulp.src(path.src)
    .pipe(base64())
    .pipe(sass())
    .pipe(gulp.dest(path.dest));
});

gulp.task('scss-min', function() {
  var path = paths.frontend.scss;

  return gulp.src(path.dest + path.min.src)
    .pipe(cssmin())
    .pipe(concat(path.min.dest))
    .pipe(gulp.dest(path.dest));
});

gulp.task('watch', function() {
  gulp.watch([paths.frontend.scss.src], ['scss', 'scss-min']);
});

gulp.task('default', ['watch', 'scss', 'scss-min']);
