import React    from 'react'
import { Link } from 'react-router'
import Sticky   from 'react-stickynode'
import moment   from 'moment'
import entity   from 'utils/entity'

module.exports = React.createClass
  displayName: 'Colorado'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>Key Information</h2>
        <p>
          Colorado has closed caucuses {entity('mdash')} Coloradans must register as a Democrat to vote for Bernie!
        </p>
        <p>
          In order to vote in Colorado, you must be:
        </p>
        <ul>
          <li>A resident of the precinct for at least 30 days.</li>
          <li>Registered to vote no later than 29 days before the caucus.</li>
          <li>Affiliated with the party holding the caucus for at least 2 months before the caucus - Deadline was January 4, 2016. </li>
        </ul>
        <h3 className='caps'>Only 17?</h3>
        <p>
          You may still vote in {@props.state.name} if you will be 18 years old by November 8, 2016.
        </p>
        <h3 className='caps'>College Students</h3>
        <p>
          If you are a college student not living in your home state, you can vote for Bernie in either your home state or in the state in which you are attending school!
        </p>
        <h3 className='caps'>Military/Overseas Voters</h3>
        <p>
          If you are a Military Voter or a United States citizen living abroad, you are able to <a href='https://www.overseasvotefoundation.org/vote/VoterInformation.htm'>complete a ballot here</a>.
        </p>
        <h3 className='caps'>More Information</h3>
        <p>
          If you have any questions about voting in {@props.state.name} you may contact your official elections office.
        </p>
        <p>
          <a href={@props.state.office.url}>Official {@props.state.name} Elections Website</a><br />
          Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
        </p>
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
