import React           from 'react'
import Chooser         from 'components/chooser'
import { primaryType } from 'states'

module.exports = React.createClass
  displayName: 'Header'

  render: ->
    <h1 id='main-heading' className='center'>
      {if @props.state && primaryType(@props.state.fillKey, @props.state.label) is 'Caucus'
        <span>
          <span className='kern'>C</span>aucusing for Bernie in 
        </span>
      else
        <span>
          <span className='kern'>V</span>oting for Bernie in 
        </span>
      }
      <Chooser state={(@props.params.state || '').toUpperCase()} />
    </h1>
