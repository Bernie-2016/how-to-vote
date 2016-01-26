module.exports =
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
