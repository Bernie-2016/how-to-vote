s3 = require('s3')
 
client = s3.createClient(s3Options: require('./aws_credentials.json'))

params =
  localDir: './dist'
  deleteRemoved: true
 
  s3Params:
    ACL: 'public-read'
    Bucket: 'vote.berniesanders.com'

uploader = client.uploadDir(params)
uploader.on('error', (err) ->
  console.error('Deployment failed:', err.stack)
)
uploader.on('end', ->
  console.log('Done!')
)
