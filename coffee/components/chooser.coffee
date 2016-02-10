import React            from 'react'
import OnClickOutside   from 'react-onclickoutside'
import $                from 'jquery'
import { states, keys } from 'states'

module.exports = React.createClass
  displayName: 'Chooser'

  mixins: [OnClickOutside]

  getInitialState: ->
    {
      open: false
    }

  handleClickOutside: ->
    @setState(open: false)

  onClick: (e) ->
    e.preventDefault()
    @setState(open: !@state.open)

  visit: (e) ->
    @props.history.pushState(null, $(e.target).data('url'))

  render: ->
    <div id='select' onClick={@onClick}>
      {(states[@props.state] || {}).name || 'America'}
      <ul hidden={!@state.open}>
        <li className='heading'>Select Your State</li>
        <li data-url={'/'} onClick={@visit}>
          America
        </li>
        {for key, state of states when state.fillKey isnt keys.UNAVAILABLE
          <li key={key} data-url={"/#{key}"} onClick={@visit}>
            {state.name}
          </li>
        }
      </ul>
    </div>
