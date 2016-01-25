gulp           = require('gulp')
del            = require('del')
sass           = require('gulp-sass')
minifycss      = require('gulp-minify-css')
webpack        = require('webpack-stream')
uglify         = require('gulp-uglify')
concat         = require('gulp-concat')
copy           = require('gulp-copy')
minifyHTML     = require('gulp-minify-html')
svgpack        = require('svgpack')
connect        = require('gulp-connect')

gulp.task 'clean', ->
  del(['dist/**/*'])

gulp.task 'svgpack', ['clean'], ->
  svgpack('img/states/*.svg', dist: 'data')

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

gulp.task 'webpack', ['clean'], ->
  gulp.src('coffee/router.coffee')
    .pipe(webpack(
      module:
        loaders: [
          {
            test: /\.coffee$/
            loaders: ['coffee', 'cjsx']
          }
          {
            test: /\.json$/
            loaders: ['json']
          }
        ]
      resolve:
        extensions: ['', '.js', '.json', '.coffee']
    ))
    .pipe(concat('production.min.js'))
    .pipe(gulp.dest('dist'))

gulp.task 'webpackProd', ['clean'], ->
  gulp.src('coffee/router.coffee')
    .pipe(webpack(
      module:
        loaders: [
          {
            test: /\.coffee$/
            loaders: ['coffee', 'cjsx']
          }
          {
            test: /\.json$/
            loaders: ['json']
          }
        ]
      resolve:
        extensions: ['', '.js', '.json', '.coffee']
    ))
    .pipe(uglify())
    .pipe(concat('production.min.js'))
    .pipe(gulp.dest('dist'))

gulp.task 'copy', ['clean'], ->
  gulp.src([
    'index.html'
    'fonts/*'
    'img/**/*'
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
  'webpack'
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
  'webpackProd'
  'minifyHTML'
]
