import React    from 'react'
import { verb } from 'states'

module.exports = React.createClass
  displayName: 'Young'

  render: ->
    <div>
      <div className='section-header'>
        <h3 className='caps'>Only 17?</h3>
      </div>
      
      <p>
        You may still {verb(@props.state)} in {@props.state.name} if you will be 18 years old by November 8, 2016.
      </p>
    </div>
