import React                                 from 'react'
import entity                                from 'utils/entity'
import { fills, label, primaryType, states } from 'states'

module.exports = React.createClass
  displayName: 'State'

  render: ->
    state = states[@props.params.state.toUpperCase()]
    StateSvg = require("img/states/#{@props.params.state.toLowerCase()}")

    return (
      <div>
        <div className='state-top'>
          <div>
            <h2 className='center' style={color: fills[state.fillKey]}>{state.name}</h2>
            <h3 className='center'>{label(state.fillKey)}</h3>
          </div>
          <div className='center'>
            <StateSvg className='state-svg' fill={fills[state.fillKey]} />
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
