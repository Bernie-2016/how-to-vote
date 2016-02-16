import React                   from 'react'
import Header                  from 'components/header'
import entity                  from 'utils/entity'
import { label, states, keys } from 'states'
import StateInfo               from 'components/partials/stateInfo'

module.exports = React.createClass
  displayName: 'State'

  componentDidMount: ->
    state = states[@props.params.state.toUpperCase()]
    @props.history.pushState(null, '/') if state.fillKey is keys.UNAVAILABLE

  render: ->
    stateKey = @props.params.state.toUpperCase()
    state = states[stateKey]

    if state.custom
      StateComponent = require("components/states/#{@props.params.state.toLowerCase()}")
    else
      StateComponent = StateInfo
    
    return (
      <div>
        <Header state={state} {...@props} />
        <StateComponent stateKey={stateKey} state={state} />
      </div>
    )
