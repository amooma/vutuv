// Requires:
var gulp = require('gulp');
var sass = require('gulp-sass');

// Setup:
var paths = {
  frontend: {
    scss: {
      dest: 'frontend/css/',
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
    .pipe(sass())
    .pipe(gulp.dest(path.dest));
});

gulp.task('watch', function() {
  gulp.watch([paths.frontend.scss.src], ['scss']);
});

gulp.task('default', ['watch', 'scss']);
