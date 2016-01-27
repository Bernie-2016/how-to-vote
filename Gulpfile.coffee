fs         = require('fs')
gulp       = require('gulp')
awsConfig  = JSON.parse(fs.readFileSync('aws_credentials.json'))
s3         = require('gulp-s3-upload')(awsConfig)

gulp.task 's3', ->
  gulp.src('dist/**/*')
    .pipe(s3(Bucket: 'vote.berniesanders.com', ACL: 'public-read'))
