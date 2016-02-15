path              = require('path')
webpack           = require('webpack')
CopyWebpackPlugin = require('copy-webpack-plugin')
GeneratePlugin    = require('./generate')

module.exports =
  entry: './coffee/router'

  output:
    filename: 'production.min.js'
    path: './dist'
    libraryTarget: 'umd'
    publicPath: '/'

  module:
    loaders: [
      {
        test: /\.coffee$/
        loaders: ['coffee', 'cjsx', 'coffee-import']
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
        test: /\.(ttf|otf|png|ico|svg)$/
        loaders: ['file']
      }
    ]

   plugins: [
      new CopyWebpackPlugin([
        {
          from: 'img/logo.png'
          to: 'logo.png' 
        }
        {
          from: 'img/favicon.ico'
          to: 'favicon.ico'
        }
      ])
      new GeneratePlugin()
      new webpack.DefinePlugin(
        __PROD__: process.env.BUILD_PROD is 'true'
      )
    ]

  resolve:
    alias:
      d3: 'd3/d3.min.js'
    root: [path.resolve('./coffee'), path.resolve('./data'), path.resolve('./'), path.resolve('./node_modules')]
    extensions: ['', '.js', '.json', '.coffee', '.scss']
