fs     = require('fs')
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
      fs.writeFileSync './dist/index.html', generated

      # Create index file for each state
      for key, state of states
        folder = "./dist/#{key}"
        fs.mkdirSync(folder) unless fs.existsSync(folder)

        generated = template.replace(new RegExp('#stateText#', 'g'), state.name)
                            .replace(new RegExp('#stateVerb#', 'g'), verb(state))
                            .replace(new RegExp('#stateCode#', 'g'), "#{key}/")
                            .replace(new RegExp('#stateShare#', 'g'), "/#{key}")
        fs.writeFileSync "#{folder}/index.html", generated

module.exports = (options) ->
  {
    apply: Generate.bind(@, options)
  }
