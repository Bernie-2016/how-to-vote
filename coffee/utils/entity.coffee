import React from 'react'

module.exports = (code) ->
  <span dangerouslySetInnerHTML={__html: "&#{code};"} />
