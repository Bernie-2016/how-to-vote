fs     = require('fs')
_      = require('lodash')
states = require('./coffee/states').states
verb   = require('./coffee/states').verb

class Generate
  constructor: (opts, compiler) ->
    return unless process.env.BUILD_PROD is 'true'
    compiler.plugin 'after-emit', (params) ->
      template = fs.readFileSync('./index.html').toString()

      # Copy index template
      generated = template.replace(new RegExp('#stateText#', 'g'), 'your state primary or caucus')
                          .replace(new RegExp('#stateVerb#', 'g'), 'vote')
                          .replace(new RegExp('#stateCode#', 'g'), '')
                          .replace(new RegExp('#stateShare#', 'g'), '')
      fs.writeFileSync './dist/base/index.html', generated

      # Create index file for each state
      fs.mkdirSync('./dist/upper') unless fs.existsSync('./dist/upper')
      fs.mkdirSync('./dist/lower') unless fs.existsSync('./dist/lower')
      for key, state of states
        folder = "./dist/upper/#{key}"
        lowerFolder = "./dist/lower/#{_.lowerCase(key)}"
        fs.mkdirSync(folder) unless fs.existsSync(folder)
        fs.mkdirSync(lowerFolder) unless fs.existsSync(lowerFolder)

        generated = template.replace(new RegExp('#stateText#', 'g'), state.name)
                            .replace(new RegExp('#stateVerb#', 'g'), verb(state))
                            .replace(new RegExp('#stateCode#', 'g'), "#{key}/")
                            .replace(new RegExp('#stateShare#', 'g'), "/#{key}")
        fs.writeFileSync "#{folder}/index.html", generated
        fs.writeFileSync "#{lowerFolder}/index.html", generated

module.exports = (options) ->
  {
    apply: Generate.bind(@, options)
  }
