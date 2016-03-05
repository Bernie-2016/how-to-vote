import React           from 'react'
import Sticky          from 'react-stickynode'
import Button          from 'components/blocks/button'
import College         from 'components/blocks/college'
import DateBox         from 'components/blocks/dateBox'
import Deadline        from 'components/blocks/deadline'
import Military        from 'components/blocks/military'
import MoreInfo        from 'components/blocks/moreInfo'
import AddToCal        from 'components/widgets/addToCalWidget'
import Offices         from 'components/widgets/officesWidget'
import PollPlace       from 'components/widgets/pollPlaceWidget'
import Reminder        from 'components/widgets/reminderWidget'
import Share           from 'components/widgets/shareWidget'
import moment          from 'moment'
import { primaryType } from 'states'
import entity          from 'utils/entity'

module.exports = React.createClass
  displayName: 'CA State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          California has semi-closed primaries {entity('mdash')} Californians must register as a Democrat or "no party preference" to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <p>
          If you're independent, make sure you're registered as 'no party preference'. There is also an Independent party in California which is NOT eligible to vote for Bernie -- only Democrats and 'no party preference' voters can vote for Bernie in the primary.
        </p>
        <h3 className='caps'>Early/Absentee Voting</h3>
        <p>
          Many counties in California will hold early voting for the Democratic primary between May 9 and June 6, 2016. Contact your <a href='http://www.sos.ca.gov/elections/voting-resources/county-elections-offices/' target='_blank'>county elections office</a> to learn more about early voting in your county. You can request a mail-in absentee ballot by submitting <a href='http://elections.cdn.sos.ca.gov/vote-by-mail/pdf/fill-in-vote-by-mail-app-instruct.pdf' target='_blank'>this form</a> before May 31, 2016. You can also file an emergency absentee ballot in person at your local <a href='http://www.sos.ca.gov/elections/voting-resources/county-elections-offices/' target='_blank'>county elections office</a> anytime between June 1 and 7, 2016.
        </p>
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <DateBox title={"#{primaryType(@props.state.fillKey, @props.state.label)} Date"} date={@props.state.date} />
          <AddToCal date={@props.state.date} state={@props.state} />
          <DateBox title='Registration Deadline' date={@props.state.regDate} />
          <AddToCal date={@props.state.regDate} state={@props.state} addendum={' Registration Deadline'} />
          <Reminder {...@props} />
          <hr className='right-divider' />

          <Button title='Register to Vote' link={@props.state.regLink} classes={'blue' unless moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days')} />
          <Button title='Check Registration Status' link={@props.state.chkLink} />
        </Sticky>
      </div>
    </section>
