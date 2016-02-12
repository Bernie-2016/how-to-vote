import React from 'react'
import moment from 'moment'
import $     from 'jquery'
import { primaryType } from 'states'

module.exports = React.createClass
  displayName: 'Reminder Widget'

  render: ->
    <div>
      <h3 className='caps'>Reminder</h3>
      <div title='Add to Calendar' className='addeventatc'>
        Add Deadline to Calendar
        <span className='start'>{moment(@props.state.date, 'YYYY MM DD').format('MM/D/YYYY')}</span>
        <span className='end'>{moment(@props.state.date, 'YYYY MM DD').format('MM/D/YYYY')}</span>
        <span className='all_day_event'>true</span>
        <span className='title'>{@props.state.name} {primaryType(@props.state.fillKey, @props.state.label)}</span>
        <span className='description'>Description of the event<br>Example of a new line</span>
        
        <span className='date_format'>MM/DD/YYYY</span>
      </div>
      <div title='Add to Calendar' className='addeventatc'>
        Add {primaryType(@props.state.fillKey, @props.state.label)} Date to Calendar
        <span className='start'>{moment(@props.state.date, 'YYYY MM DD').format('MM/D/YYYY')}</span>
        <span className='end'>{moment(@props.state.date, 'YYYY MM DD').format('MM/D/YYYY')}</span>
        <span className='all_day_event'>true</span>
        <span className='title'>{@props.state.name} {primaryType(@props.state.fillKey, @props.state.label)}</span>
        <span className='description'>Description of the event<br>Example of a new line</span>
        
        <span className='date_format'>MM/DD/YYYY</span>
      </div>
    </div>