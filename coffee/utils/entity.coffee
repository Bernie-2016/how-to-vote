React = require('react')

module.exports = (code) ->
  <span dangerouslySetInnerHTML={__html: "&#{code};"} />
