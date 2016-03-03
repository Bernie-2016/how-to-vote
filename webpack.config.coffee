path                      = require('path')
webpack                   = require('webpack')
CopyWebpackPlugin         = require('copy-webpack-plugin')
GeneratePlugin            = require('./generate')
StaticSiteGeneratorPlugin = require('static-site-generator-webpack-plugin')
states                    = require('./coffee/states').states

paths = ['/']
for key, _ of states
  paths.push "/#{key}/"

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
      {
        test: /\.html$/
        loaders: ['raw']
      }
      {
        test: /[\/\\]node_modules[\/\\]datamaps[\/\\]dist[\/\\]datamaps.usa\.js$/
        loaders: ['imports?window=>{}']
      }
      {
        test: /[\/\\]node_modules[\/\\]google-maps[\/\\]lib[\/\\]Google\.js$/
        loaders: ['imports?window=>{}']
      }
    ]

   plugins: [
      new CopyWebpackPlugin([
        {
          from: 'img/share.png'
          to: 'share.png' 
        }
        {
          from: 'img/favicon.ico'
          to: 'favicon.ico'
        }
        {
          from: 'img/share'
          to: 'share'
        }
      ])
      # new GeneratePlugin()
      new webpack.ProvidePlugin(
        'window.d3': 'd3'
        'window.topojson': 'topojson'
      )
      new StaticSiteGeneratorPlugin('main', paths)
      new webpack.DefinePlugin(
        __PROD__: process.env.BUILD_PROD is 'true'
      )
    ]

  resolve:
    alias:
      d3: 'd3/d3.min.js'
    root: [path.resolve('./coffee'), path.resolve('./data'), path.resolve('./'), path.resolve('./node_modules')]
    extensions: ['', '.js', '.json', '.coffee', '.scss']
