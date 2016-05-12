React  = require('react')
moment = require('moment')

module.exports = React.createClass
  displayName: 'Date Box'

  render: ->
    <div>
      <h3 className='caps'>{@props.title}</h3>
      <p className='date jubilat blue'>
        {moment(@props.date, 'YYYY MM DD').format('ddd, MMM Do')}
      </p>
      {if moment().isSame(moment(@props.date, 'YYYY MM DD'), 'days')
        <div>
          <h4>(today!)</h4>
          <br />
        </div>
      }
    </div>
