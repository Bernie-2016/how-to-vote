import React     from 'react'
import { Link }  from 'react-router'
import Sticky    from 'react-stickynode'
import moment    from 'moment'
import entity    from 'utils/entity'
import TopInfo   from 'components/states/partials/topInfo'
import PollPlace from 'components/states/partials/pollPlace'
import AddToCal  from 'components/states/partials/calWidget'
import Reminder  from 'components/states/partials/reminderWidget'

module.exports = React.createClass
  displayName: 'NV State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <TopInfo state={@props.state} />
        <PollPlace title={'Caucus'} />
        <h3 className='caps'>ID Requirement</h3>
        <p>Make sure you bring one of the following when you go to vote:</p>
        <ul>
        <li>Nevada Driver’s license</li>
        <li>Nevada Identification Card</li>
        <li>Armed Forces Identification Card</li>
        <li>Sheriff’s Work Identification Card</li>
        <li>Identification Card issued by an Agency of the State of Nevada or other political subdivision</li>
        <li>Student Identification Card</li>
        <li>United States Passport</li>
        <li>Tribal Identification Card</li>
        <li>Other forms of identification may be used; please check with your County Clerk/Registrar of Voters for other acceptable forms of identification.</li>
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
          If you live, work, are in the military or study abroad, you are able to participate in Nevada’s Tele-Caucus on February 20th at 11am, but must <a href='http://action.nvdems.com/page/s/telecaucus' target='_blank'>pre-register</a> from Monday, February 1st – Sunday, February 14 (Midnight PST).
        </p>
        <p>
          After registering, you will receive a confirmation email. One week prior, you will receive a dial-in number and a unique pin. You must be dialed in to the Tele-Caucus by 12:00 p.m. PST.
        </p>
        <h3 className='caps'>More Information</h3>
        <p>
          For more information about the Democratic caucus in Nevada, visit the <a href='http://nvdems.com' target='_blank'>NVDems website</a>.
        </p>
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <h3 className='caps'>Caucus Date</h3>
          <p className='date jubilat blue'>
            {moment(@props.state.date, 'YYYY MM DD').format('ddd, MMM Do')}, 11AM
          </p>
          <AddToCal date={@props.state.date} state={@props.state} />
          <Reminder {...@props} />
          <hr className='right-divider' />
          <p>
            <a href={@props.state.regLink} target='_blank' className='btn blue'>
              Register to Vote
            </a>
          </p>
          <p>
            <a href={@props.state.chkLink} target='_blank' className='btn'>
              Check Registration Status
            </a>
          </p>
          <p>
            <a href='https://go.berniesanders.com/page/s/ride-caucus-day-nv' target='_blank' className='btn'>
              Need a ride?
            </a>
          </p>
        </Sticky>
      </div>
    </section>
