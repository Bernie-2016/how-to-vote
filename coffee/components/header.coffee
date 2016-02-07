import React      from 'react'
import $          from 'jquery'
import { states } from 'states'

window.$ = $

module.exports = React.createClass
  displayName: 'Header'

  getInitialState: ->
    {
      open: false
    }

  onClick: (e) ->
    e.preventDefault()
    # @props.history.pushState(null, "/#{e.target.value}")

  sizeSelect: ->
    $('select#header-select-tmp option').html($('#header-select').find(':selected').text())
    $('#header-select').css(width: $('select#header-select-tmp').width() + 60)

  componentDidUpdate: ->
    @sizeSelect()

  componentDidMount: ->
    @sizeSelect()

  render: ->
    <h1 id='main-header' className='center'>
      <span className='kern'>V</span>oting for Bernie in 
      <div className='state-dropdown'>
        {if @state.open
          <div id=''
        }
        <select id='header-select' value={@props.params.state} onClick={@onClick} onChange={@onChange} disabled={true}>
          <option key={'AMERICA'} value=''>America</option>
          {for state, hash of states
            <option key={state} value={state}>{hash.name}</option>
          }
        </select>
        <select id='header-select-tmp'>
          <option></option>
        </select>
        <hr />
      </div>
    </h1>
