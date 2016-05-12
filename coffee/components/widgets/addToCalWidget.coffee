React         = require('react')
moment        = require('moment')
{primaryType} = require('states')

module.exports = React.createClass
  displayName: 'Add to Cal Widget'

  componentDidMount: ->
    if window.addeventatc
      window.addeventatc.initialize()
      window.addeventatc.refresh()

  render: ->
    <div>
      {unless moment() > moment(@props.date, 'YYYY MM DD')
        <div title='Add to Calendar' className='addeventatc'>
          + Add to Calendar
          <span className='start'>{moment(@props.date, 'YYYY MM DD').format('MM/D/YYYY')}</span>
          <span className='end'>{moment(@props.date, 'YYYY MM DD').format('MM/D/YYYY')}</span>
          <span className='all_day_event'>true</span>
          <span className='title'>{@props.state.name} {primaryType(@props.state.fillKey, @props.state.label)}{@props.addendum}</span>
          <span className='date_format'>MM/DD/YYYY</span>
        </div>
      }
    </div>
