import React                   from 'react'
import Header                  from 'components/header'
import NotFound                from 'components/notFound'
import entity                  from 'utils/entity'
import { label, states, keys } from 'states'

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
    else
      StateComponent = require("components/states/#{@props.params.state.toLowerCase()}")
    
    return (
      <div>
        <Header state={state} {...@props} />
        <StateComponent skipHeader={true} stateKey={stateKey} state={state} />
      </div>
    )
