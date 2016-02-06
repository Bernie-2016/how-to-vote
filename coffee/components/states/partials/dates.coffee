import React from 'react'

module.exports = React.createClass
  displayName: 'Dates'

  render: ->
    # TODO: Figure out why this doesn't work at the top of the file.
    primaryType = require('states').primaryType

    <div className='state-dates'>
      <div className='center'>
        <h2>Registration Deadline</h2>
        <h4>{@props.state.regDate}</h4>
      </div>
      <div className='center'>
        <h2>{primaryType(@props.state.fillKey, @props.state.label)} Date</h2>
        <h4>{@props.state.date}</h4>
      </div>
    </div>
