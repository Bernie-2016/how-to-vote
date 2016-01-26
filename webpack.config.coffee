path = require('path')
CopyWebpackPlugin = require('copy-webpack-plugin');

module.exports =
  entry: './coffee/router'

  output:
    filename: 'production.min.js'
    path: './dist'
    libraryTarget: 'umd'

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
      {
        test: /\.scss$/
        loaders: ['style', 'css', 'resolve-url', 'sass']
      }
      {
        test: /\.(ttf|otf)$/
        loaders: ['file-loader']
      }
    ]

   plugins: [
      new CopyWebpackPlugin([
        {
          from: 'index.html'
          to: 'index.html'
        }
        {
          from: 'img/*.png'
          to: 'dist/img'
        }
        {
          from: 'img/*.ico'
          to: 'dist/img'
        }
      ])
    ]

  resolve:
    root: [path.resolve('./coffee'), path.resolve('./data'), path.resolve('./')]
    extensions: ['', '.js', '.json', '.coffee', '.scss']
