import React      from 'react'
import { Link }   from 'react-router'
import Sticky     from 'react-stickynode'
import moment     from 'moment'
import entity     from 'utils/entity'
import TopInfo    from 'components/states/partials/topInfo'
import CommonInfo from 'components/states/partials/commonInfo'

module.exports = React.createClass
  displayName: 'Colorado'

  render: ->
    <section className='flex'>
      <div className='left'>
        <TopInfo state={@props.state} />

        <p>
          In order to vote in Colorado, you must be:
        </p>
        <ul>
          <li>A resident of the precinct for at least 30 days.</li>
          <li>Registered to vote no later than 29 days before the caucus.</li>
          <li>Affiliated with the party holding the caucus for at least 2 months before the caucus - Deadline was January 4, 2016. </li>
        </ul>

        <CommonInfo state={@props.state} />
      </div>
      <div className='right'>
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
            <Link to='https://www.sos.state.co.us/voter-classic/pages/pub/olvr/findVoterReg.xhtml' className='btn red'>
              Check Registration Status
            </Link>
          </p>
        </Sticky>
      </div>
    </section>
