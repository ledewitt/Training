// Gulp depndencies go here
const gulp = require('gulp');
const babel = require('gulp-babel');

gulp.task('default', function() {
  // Gulp tasks go here
  // Node source
  gulp.src("es6/**/*.js")
    .pipe(babel())
    .pipe(gulp.dest("dist"));
  // Browser source
  gulp.src("public/es6/**/*.js")
    .pipe(babel())
    .pipe(gulp.dest("public/dist"));
});
