path                      = require('path')
webpack                   = require('webpack')
CopyWebpackPlugin         = require('copy-webpack-plugin')
StaticSiteGeneratorPlugin = require('static-site-generator-webpack-plugin')
SitemapPlugin             = require('sitemap-webpack-plugin')
ExtractTextPlugin         = require('extract-text-webpack-plugin')
states                    = require('./data/states')

paths = ['/']
for key, _ of states
  paths.push "/#{key}/" unless key is 'DA'

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
        loader: ExtractTextPlugin.extract('style-loader', 'css-loader!resolve-url-loader!sass-loader')
      }
      {
        test: /\.(ttf|otf|png|ico|svg)$/
        loaders: ['file']
      }
      {
        test: /[\/\\]node_modules[\/\\]datamaps[\/\\]dist[\/\\]datamaps.usa\.js$/
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
      new webpack.ProvidePlugin(
        'window.d3': 'd3'
        'window.topojson': 'topojson'
      )
      new StaticSiteGeneratorPlugin('main', paths)
      new ExtractTextPlugin('production.min.css', allChunks: true)
      new SitemapPlugin('https://vote.berniesanders.com', paths)
      new webpack.DefinePlugin(
        __PROD__: process.env.BUILD_PROD is 'true'
      )
    ]

  resolve:
    alias:
      d3: 'd3/d3.min.js'
    root: [path.resolve('./coffee'), path.resolve('./'), path.resolve('./node_modules')]
    extensions: ['', '.js', '.json', '.coffee', '.scss']
