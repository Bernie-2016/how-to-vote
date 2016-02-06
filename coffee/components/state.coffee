import React             from 'react'
import Header            from 'components/header'
import entity            from 'utils/entity'
import { label, states } from 'states'

module.exports = React.createClass
  displayName: 'State'

  render: ->
    state = states[@props.params.state.toUpperCase()]

    return (
      <div>
        <Header state={state} {...@props} />
        <div className='state-top'>
          <div>
            <h2 className='center'>{state.name}</h2>
            <h3 className='center'>{label(state.fillKey)}</h3>
          </div>
        </div>
        {if state.component
          <state.component state={state} />
        }
        <div className='state-final'>
          <blockquote>
            When people vote, Democrats win
            <cite>
              {entity('mdash')} Sen. Bernie Sanders
            </cite>
          </blockquote>
        </div>
      </div>
    )
