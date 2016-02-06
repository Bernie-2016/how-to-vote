import React from 'react'

module.exports = React.createClass
  displayName: 'Dates'

  render: ->
    fills       = require('states').fills
    primaryType = require('states').primaryType

    <div className='state-dates'>
      <div className='center'>
        <h2 style={color: fills[@props.state.fillKey]}>Registration Deadline</h2>
        <h4>{@props.state.regDate}</h4>
      </div>
      <div className='center'>
        <h2 style={color: fills[@props.state.fillKey]}>{primaryType(@props.state.fillKey, @props.state.label)} Date</h2>
        <h4>{@props.state.date}</h4>
      </div>
    </div>
