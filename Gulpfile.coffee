fs         = require('fs')
gulp       = require('gulp')
del        = require('del')
sass       = require('gulp-sass')
minifycss  = require('gulp-minify-css')
webpack    = require('webpack-stream')
uglify     = require('gulp-uglify')
concat     = require('gulp-concat')
copy       = require('gulp-copy')
minifyHTML = require('gulp-minify-html')
awsConfig  = JSON.parse(fs.readFileSync('aws_credentials.json'))
s3         = require('gulp-s3-upload')(awsConfig)
svgpack    = require('svgpack')
connect    = require('gulp-connect')

gulp.task 'clean', ->
  del(['dist/**/*'])

gulp.task 'svgpack', ['clean'], ->
  svgpack('img/states/*.svg', dist: 'data')

gulp.task 'scss', ->
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

gulp.task 'webpack', ->
  gulp.src('coffee/router.coffee')
    .pipe(webpack(require('./webpack.config')))
    .pipe(concat('production.min.js'))
    .pipe(gulp.dest('dist'))

gulp.task 'webpackProd', ['clean'], ->
  gulp.src('coffee/router.coffee')
    .pipe(webpack(require('./webpack.config')))
    .pipe(uglify())
    .pipe(concat('production.min.js'))
    .pipe(gulp.dest('dist'))

gulp.task 'copy', ['clean'], ->
  gulp.src([
    'index.html'
    'fonts/*'
    'img/**/*'
  ]).pipe(copy('dist'))

gulp.task 'copyProd', ['clean'], ->
  gulp.src([
    'fonts/*'
    'img/*.png'
    'img/favicon.ico'
  ]).pipe(copy('dist'))

gulp.task 'minifyHTML', ['scssProd', 'webpackProd'], ->
  gulp.src('index.html')
    .pipe(minifyHTML())
    .pipe(gulp.dest('dist'))

gulp.task 'watch', ->
  gulp.watch ['dist/production.min.js', 'dist/production.min.css'], (event) ->
    gulp.src(event.path).pipe connect.reload()

  gulp.watch 'scss/**/*.scss', ['scss', 'webpack']
  gulp.watch 'coffee/**/*.coffee', ['webpack']

gulp.task 'connect', ->
  connect.server
    root: [ 'dist' ]
    fallback: 'index.html'
    port: 9010
    livereload:
      port: 32834
    connect:
      redirect: false

gulp.task 's3', ['build'], ->
  gulp.src('dist/**/*')
    .pipe(s3(Bucket: 'vote.berniesanders.com', ACL: 'public-read'))

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
  'copyProd'
  'minifyHTML'
]

gulp.task 'deploy', [
  'build'
  's3'
]
