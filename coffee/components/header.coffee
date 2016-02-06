import React      from 'react'
import $          from 'jquery'
import { states } from 'states'

window.$ = $

module.exports = React.createClass
  displayName: 'Header'

  onChange: (e) ->
    @props.history.pushState(null, "/#{e.target.value}")

  componentDidMount: ->
    # $('#header-select').css(width: $('#header-select').find(':selected').width())

  render: ->
    <h1 className='center'>
      <span className='kern'>V</span>oting for Bernie in 
      <select id='header-select' value={@props.params.state}  onChange={@onChange}>
        <option key={'AMERICA'} value=''>America</option>
        {for state, hash of states
          <option key={state} value={state}>{hash.name}</option>
        }
      </select>
    </h1>
