import React     from 'react'
import Sticky    from 'react-stickynode'
import Button    from 'components/blocks/button'
import DateBox   from 'components/blocks/dateBox'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import AddToCal  from 'components/widgets/addToCalWidget'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Reminder  from 'components/widgets/reminderWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'
import moment    from 'moment'

module.exports = React.createClass
  displayName: 'WV State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          West Virginia has semi-closed primaries {entity('mdash')} West Virginians must register as a Democrat, Independent or unaffiliated to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>Only 17?</h3>
        <p>
          You may still vote in West Virginia if you will be 18 years old by November 8, 2016 (if you registered by the April 19 deadline).
        </p>
        <h3 className='caps'>Early Voting</h3>
        <p>
          Early voting in the West Virginia Primary takes place between April 27 and May 7, 2016. Contact your <a href='http://www.sos.wv.gov/elections/Vote/EarlyVoting/Pages/default.aspx' target='_blank'>county clerk</a> to confirm early voting hours and locations.
        </p>
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <DateBox title='Primary Date' date={@props.state.date} />
          <AddToCal date={@props.state.date} state={@props.state} />
          <DateBox title='Registration Deadline' date={@props.state.regDate} />
          <AddToCal date={@props.state.regDate} state={@props.state} addendum={' Registration Deadline'} />
          <Reminder {...@props} />

          <hr className='right-divider' />
          <Button title='Register to Vote' link={@props.state.regLink} classes={'blue' unless moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days')} />
          <Button title='Check Registration Status' link={@props.state.chkLink} />
          <Button title='Commit to Vote' classes='blue' link='https://go.berniesanders.com/page/s/commit-to-vote-WV?source=votesite' />
        </Sticky>
      </div>
    </section>
