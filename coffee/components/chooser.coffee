import React            from 'react'
import { Link }         from 'react-router'
import OnClickOutside   from 'react-onclickoutside'
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

  render: ->
    <div id='select' onClick={@onClick}>
      {(states[@props.state] || {}).name || 'America'}
      <ul hidden={!@state.open}>
        <li className='heading'>Select Your State</li>
        <li>
          <Link to='/'>America</Link>
        </li>
        {for key, state of states when state.fillKey isnt keys.UNAVAILABLE
          <li key={key}>
            <Link to={"/#{key}"}>{state.name}</Link>
          </li>
        }
      </ul>
    </div>
