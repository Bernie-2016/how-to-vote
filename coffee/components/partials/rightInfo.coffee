import React           from 'react'
import Sticky          from 'react-stickynode'
import moment          from 'moment'
import { primaryType } from 'states'
import AddToCal        from 'components/widgets/addToCalWidget'
import Reminder        from 'components/widgets/reminderWidget'

module.exports = React.createClass
  displayName: 'State Right Info'

  render: ->
    <Sticky top={25} bottomBoundary='section.flex'>
      <h3 className='caps'>{primaryType(@props.state.fillKey, @props.state.label)} Date</h3>
      <p className='date jubilat blue'>
        {moment(@props.state.date, 'YYYY MM DD').format('ddd, MMM Do')}
        {if moment().isSame(moment(@props.state.date, 'YYYY MM DD'), 'days')
          <div>
            <h4>(today!)</h4>
            <br />
          </div>
        }
      </p>
      <AddToCal date={@props.state.date} state={@props.state} />
      {if @props.state.regDate
        <div>
          <h3 className='caps'>
            Registration Deadline
          </h3>
          <p className='date jubilat blue'>
            {moment(@props.state.regDate, 'YYYY MM DD').format('ddd, MMM Do')}
          </p>
          {if moment().isSame(moment(@props.state.regDate, 'YYYY MM DD'), 'days')
            <h4>(today!)</h4>
          }
          <AddToCal date={@props.state.regDate} state={@props.state} addendum={' Registration Deadline'} />
        </div>
      }
      <Reminder {...@props} />
      <hr className='right-divider' />

      {if @props.state.regLink
        <p>
          <a href={@props.state.regLink} target='_blank' className={if moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days') then 'btn' else 'btn blue'}>
            Register to Vote
          </a>
        </p>
      }
      {if @props.state.chkLink
        <p>
          <a href={@props.state.chkLink} target='_blank' className='btn'>
            Check Registration Status
          </a>
        </p>
      }
      {if @props.state.more
        <p>
          <a href={@props.state.more} target='_blank' className='btn blue'>
            More Info
          </a>
        </p>
      }
    </Sticky>
