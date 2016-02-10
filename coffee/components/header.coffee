import React   from 'react'
import Chooser from 'components/chooser'

module.exports = React.createClass
  displayName: 'Header'

  render: ->
    <h1 id='main-heading' className='center'>
      <span className='kern'>V</span>oting for Bernie in 
      <Chooser state={@props.params.state} />
    </h1>
