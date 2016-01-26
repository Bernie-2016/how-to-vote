path = require('path')

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
    root: [path.resolve('./coffee'), path.resolve('./data')]
    extensions: ['', '.js', '.json', '.coffee']
