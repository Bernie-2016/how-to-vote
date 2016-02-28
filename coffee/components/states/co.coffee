import React      from 'react'
import Sticky     from 'react-stickynode'
import moment     from 'moment'
import AddToCal   from 'components/widgets/addToCalWidget'
import Reminder   from 'components/widgets/reminderWidget'
import PollPlace  from 'components/widgets/pollPlaceWidget'
import Offices    from 'components/widgets/officesWidget'
import entity     from 'utils/entity'

module.exports = React.createClass
  displayName: 'CO State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>Key Information</h2>
        {if @props.state.pollWgt
          <PollPlace state={@props.state} />
        }
        <p>
          {@props.state.name} has {@props.state.dtlName} {entity('mdash')} {@props.state.byline}
        </p>

        <p>
          Requirements for eligibility:
        </p>
        <ul>
          <li>Affiliated with the Democratic party by January 4, 2016</li>
          <li>Registered to vote 29 days prior to the caucus</li>
          <li>Resident of your precinct for at least 30 days</li>
          <li>Anyone who turns 18 or becomes a citizen on or before March 1 can caucus!</li>
        </ul>
        <p>
          <strong>Please arrive to your caucus early! Doors open between 6pm and 6:30pm.</strong>
        </p>
        <p>
          You must be in line by 7pm.
        </p>
        <p>
          Questions or issues at the caucus? Call our East Metro Bernie Office: <a href='tel:+13033210089'>(303) 321-0089</a>
        </p>
        <p>
          Text CO or COLORADO to 82623 to commit to caucus!
        </p>

        <h3 className='caps'>More Information</h3>
        <p>
          If you have any questions about voting in {@props.state.name} you may contact your state elections office for more information.
        </p>
        <p>
          <a href={@props.state.office.url} target='_blank'>{@props.state.name} Elections Information</a><br />
          Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
        </p>
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <h3 className='caps'>Caucus Date</h3>
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
          <div>
            <h3 className='caps'>
              Registration Deadline
            </h3>
            <p className='date jubilat blue'>
              {moment(@props.state.regDate, 'YYYY MM DD').format('ddd, MMM Do')}
            </p>
            <AddToCal date={@props.state.regDate} state={@props.state} addendum={' Registration Deadline'} />
            <Reminder {...@props} />
          </div>
          
          <hr className='right-divider' />
          <p>
            <a href='https://www.sos.state.co.us/voter-classic/pages/pub/olvr/findVoterReg.xhtml' target='_blank' className='btn blue'>
              Check Registration Status
            </a>
          </p>
          <p>
            <a href='https://go.berniesanders.com/page/s/co-commit-to-caucus-sms' target='_blank' className='btn'>
              Commit to Caucus
            </a>
          </p>
        </Sticky>
      </div>
    </section>
