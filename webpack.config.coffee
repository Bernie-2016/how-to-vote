path              = require('path')
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
        loaders: ['file']
      }
      {
        test: /\.svg$/
        loaders: ['babel?presets[]=react,presets[]=es2015', 'svg-react']
      }
    ]

   plugins: [
      new HtmlWebpackPlugin(
        template: 'index.html'
        title: 'Bernie Sanders'
        minify:
          collapseWhitespace: true
      )
    ]

  resolve:
    alias:
      d3: 'd3/d3.min.js'
    root: [path.resolve('./coffee'), path.resolve('./data'), path.resolve('./'), path.resolve('./node_modules')]
    extensions: ['', '.js', '.json', '.coffee', '.scss', '.svg']
