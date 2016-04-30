import React     from 'react'
import Sticky    from 'react-stickynode'
import Button    from 'components/blocks/button'
import College   from 'components/blocks/college'
import DateBox   from 'components/blocks/dateBox'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Young     from 'components/blocks/young'
import AddToCal  from 'components/widgets/addToCalWidget'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Reminder  from 'components/widgets/reminderWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'
import moment    from 'moment'

module.exports = React.createClass
  displayName: 'IN State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Indiana has open primaries {entity('mdash')} Hoosiers can vote for Bernie Sanders regardless of their registered party.
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>ID Requirement</h3>
        <p>
          Indiana requires you to present a photo identification in order to vote in person. To learn more about what types of IDs are acceptable, click <a href='http://www.in.gov/sos/elections/2401.htm' target='_blank'>here</a>.
        </p>
        <h3 className='caps'>Early Voting</h3>
        <p>
          Early voting began on April 5th and continues until May 2nd. You can vote at your County Election Board or a satellite facility. Hours and locations vary across the state, so please check your <a href='https://indianavoters.in.gov/PublicSite/Public/FT1/PublicLookupMain.aspx' target='_blank'>County Election Board</a>.
        </p>
        <Young {...@props} />
        <College {...@props} />
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
          <Button title='Commit to Vote' classes='blue' link='https://go.berniesanders.com/page/s/commit-to-vote-IN' />
        </Sticky>
      </div>
    </section>
