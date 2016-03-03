import React                   from 'react'
import Header                  from 'components/header'
import entity                  from 'utils/entity'
import { label, states, keys } from 'states'
import StateInfo               from 'components/partials/stateInfo'
import NotFound                from 'components/notFound'

module.exports = React.createClass
  displayName: 'State'

  contextTypes:
    router: React.PropTypes.object

  componentDidMount: ->
    state = states[@props.params.state.toUpperCase()]
    @context.router.push('/') if state && state.fillKey is keys.UNAVAILABLE

  render: ->
    stateKey = @props.params.state.toUpperCase()
    state = states[stateKey]

    if typeof state is 'undefined'
      StateComponent = NotFound
    else if state.custom
      StateComponent = require("components/states/#{@props.params.state.toLowerCase()}")
    else
      StateComponent = StateInfo
    
    return (
      <div>
        <Header state={state} {...@props} />
        <StateComponent skipHeader={true} stateKey={stateKey} state={state} />
      </div>
    )
