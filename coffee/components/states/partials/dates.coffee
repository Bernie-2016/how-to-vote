import React from 'react'

module.exports = React.createClass
  displayName: 'Dates'

  render: ->
    # TODO: Figure out why this doesn't work at the top of the file.
    import { fills, primaryType } from 'states'

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
