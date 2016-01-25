gulp           = require('gulp')
del            = require('del')
sass           = require('gulp-sass')
minifycss      = require('gulp-minify-css')
coffee         = require('gulp-coffee')
uglify         = require('gulp-uglify')
concat         = require('gulp-concat')
copy           = require('gulp-copy')
minifyHTML     = require('gulp-minify-html')
connect        = require('gulp-connect')

gulp.task 'clean', ->
  del(['dist/**/*'])

gulp.task 'scss', ['clean'], ->
  gulp.src('scss/**/*.scss')
    .pipe(sass())
    .pipe(concat('production.min.css'))
    .pipe(gulp.dest('dist'))

gulp.task 'scssProd', ['clean'], ->
  gulp.src('scss/**/*.scss')
    .pipe(sass())
    .pipe(concat('production.min.css'))
    .pipe(minifycss())
    .pipe(gulp.dest('dist'))

gulp.task 'coffee', ['clean'], ->
  gulp.src('coffee/**/*.coffee')
    .pipe(coffee())
    .pipe(concat('production.min.js'))
    .pipe(gulp.dest('dist'))

gulp.task 'coffeeProd', ['clean'], ->
  gulp.src('coffee/**/*.coffee')
    .pipe(coffee())
    .pipe(uglify())
    .pipe(concat('production.min.js'))
    .pipe(gulp.dest('dist'))

gulp.task 'copy', ['clean'], ->
  gulp.src([
    'index.html'
    'fonts/*'
  ]).pipe(copy('dist'))

gulp.task 'minifyHTML', ['scssProd', 'coffeeProd'], ->
  gulp.src('index.html')
    .pipe(inline())
    .pipe(minifyHTML())
    .pipe(gulp.dest('dist'))

gulp.task 'watch', ->
  gulp.watch [
    'scss/**/*.scss'
    'coffee/**/*.coffee'
  ], (event) ->
    gulp.src(event.path).pipe connect.reload()

  gulp.watch 'scss/**/*.scss', ['default']
  gulp.watch 'coffee/**/*.coffee', ['default']

gulp.task 'connect', ->
  connect.server
    root: [ 'dist' ]
    fallback: 'index.html'
    port: 9010
    livereload:
      port: 32834
    connect:
      redirect: false

gulp.task 'default', [
  'clean'
  'scss'
  'coffee'
  'copy'
]

gulp.task 'serve', [
  'default'
  'connect'
  'watch'
]

gulp.task 'build', [
  'clean'
  'scssProd'
  'coffeeProd'
  'minifyHTML'
]
