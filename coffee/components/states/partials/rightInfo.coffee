import React    from 'react'
import { Link } from 'react-router'
import Sticky   from 'react-stickynode'
import moment   from 'moment'

module.exports = React.createClass
  displayName: 'State Right Info'

  render: ->
    <Sticky top={25} bottomBoundary='section.flex'>
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
        <Link to={@props.state.regLink} className='btn red'>
          Register to Vote
        </Link>
      </p>
      <p>
        <Link to={@props.state.chkLink} className='btn'>
          Check Registration Status
        </Link>
      </p>
    </Sticky>
