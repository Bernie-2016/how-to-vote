import React      from 'react'
import Sticky     from 'react-stickynode'
import moment     from 'moment'
import TopInfo    from 'components/states/partials/topInfo'
import CommonInfo from 'components/states/partials/commonInfo'
import AddToCal   from 'components/states/partials/calWidget'
import Reminder   from 'components/states/partials/reminderWidget'

module.exports = React.createClass
  displayName: 'CO State Info'

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
          <AddToCal date={@props.state.date} state={@props.state} />
          <div>
            <h3 className='caps'>
              Registration Deadline
            </h3>
            <p className='date jubilat blue'>
              {moment(@props.state.regDate, 'YYYY MM DD').format('ddd, MMM Do')}
            </p>
            <AddToCal date={@props.state.regDate} state={@props.state} />
            <Reminder {...@props} />
          </div>
          
          <hr className='right-divider' />
          <p>
            <a href='https://www.sos.state.co.us/voter-classic/pages/pub/olvr/findVoterReg.xhtml' target='_blank' className='btn blue'>
              Check Registration Status
            </a>
          </p>
        </Sticky>
      </div>
    </section>
