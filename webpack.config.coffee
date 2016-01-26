path = require('path')
HtmlWebpackPlugin = require('html-webpack-plugin')

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
        test: /\.(ttf|otf|png|ico)$/
        loaders: ['file-loader']
      }
    ]

   plugins: [
      new HtmlWebpackPlugin(
        template: 'index.html'
        title: 'Bernie Sanders'
        favicon: './img/favicon.ico'
        minify:
          collapseWhitespace: true
      )
    ]

  resolve:
    root: [path.resolve('./coffee'), path.resolve('./data'), path.resolve('./')]
    extensions: ['', '.js', '.json', '.coffee', '.scss']
