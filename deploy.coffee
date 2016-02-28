s3 = require('s3')
 
client = s3.createClient(s3Options: require('./credentials.json'))

s3Params =
  ACL: 'public-read'
  Bucket: 'vote.berniesanders.com'

params =
  localDir: './dist/base'
  deleteRemoved: true
  s3Params: s3Params

uploader = client.uploadDir(params)
uploader.on('error', (err) ->
  console.error('Deployment failed:', err.stack)
)
uploader.on('end', ->
  params =
    localDir: './dist/upper'
    s3Params: s3Params

  uploader = client.uploadDir(params)
  uploader.on('error', (err) ->
    console.error('Deployment failed:', err.stack)
  )
  uploader.on('end', ->
    params =
      localDir: './dist/lower'
      s3Params: s3Params

    uploader = client.uploadDir(params)
    uploader.on('error', (err) ->
      console.error('Deployment failed:', err.stack)
    )
    uploader.on('end', ->
      console.log('Done!')
    )
  )
)
