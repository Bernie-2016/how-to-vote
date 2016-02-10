import React          from 'react'
import { Link }       from 'react-router'
import OnClickOutside from 'react-onclickoutside'
import $              from 'jquery'
import { states }     from 'states'

window.$ = $

module.exports = React.createClass
  displayName: 'Header'

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
    # @props.history.pushState(null, "/#{e.target.value}")

  render: ->
    <h1 id='main-header' className='center'>
      <span className='kern'>V</span>oting for Bernie in 
      <div className='state-dropdown' onClick={@onClick}>
        {if @state.open
          <div id='state-list'>
            <div className='select-state'>Select Your State</div>
            <Link to='/'>America</Link>
            {for key, state of states
              <Link to={"/#{key}"} key={key}>{state.name}</Link>
            }
          </div>
        }
        <div id='header-select'>
          {(states[@props.params.state] || {}).name || 'America'}
        </div>
        <div id='header-arrow'></div>
      </div>
    </h1>
