import React    from 'react'
import { Link } from 'react-router'
import Sticky   from 'react-stickynode'
import moment   from 'moment'

module.exports = React.createClass
  displayName: 'State Right Info'

  render: ->
    <Sticky enabled={window.innerWidth >= 768} top={25} bottomBoundary='section.flex'>
      <h3 className='caps'>Caucus Date</h3>
      <p className='date jubilat blue'>
        {moment(@props.state.date, 'YYYY MM DD').format('ddd, MMM Do')}
      </p>
      <h3 className='caps'>
        Registration Deadline
      </h3>
      <p className='date jubilat blue'>
        {moment(@props.state.regDate, 'YYYY MM DD').format('ddd, MMM Do')}
      </p>
      <p>
        <a href={@props.state.regLink} className='btn red'>
          Register to Vote
        </a>
      </p>
      <p>
        <a href={@props.state.chkLink} className='btn'>
          Check Registration Status
        </a>
      </p>
    </Sticky>
