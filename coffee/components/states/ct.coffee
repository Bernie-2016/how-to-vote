import React           from 'react'
import Sticky          from 'react-stickynode'
import Button          from 'components/blocks/button'
import College         from 'components/blocks/college'
import DateBox         from 'components/blocks/dateBox'
import Deadline        from 'components/blocks/deadline'
import Military        from 'components/blocks/military'
import MoreInfo        from 'components/blocks/moreInfo'
import Young           from 'components/blocks/young'
import AddToCal        from 'components/widgets/addToCalWidget'
import Offices         from 'components/widgets/officesWidget'
import PollPlace       from 'components/widgets/pollPlaceWidget'
import Reminder        from 'components/widgets/reminderWidget'
import Share           from 'components/widgets/shareWidget'
import moment          from 'moment'
import { primaryType } from 'states'
import entity          from 'utils/entity'

module.exports = React.createClass
  displayName: 'CT State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Connecticut has closed primaries {entity('mdash')} Connecticuters must register as a Democrat to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <p>
          If you are a new voter registering to vote by mail, your registration form must be postmarked by April 21, 2016. If you want to change your party enrollment from unaffiliated to Democratic, your registration form must be received by your municipal registrar of vote by that date. (Unfortunately, if you are enrolled in a different political party, the deadline to change your registration to Democratric has already passed.) You can register to vote or change your party affiliation from unaffiliated to Democratic in person at your local town hall until noon on April 25, 2016.
        </p>
        <h3 className='caps'>ID Requirement</h3>
        <p>
          If you vote in person and have never voted in a federal election in your municipality, you might be asked to present a photo ID, utility bill, bank statement, government document, or paycheck that shows your address.
        </p>
        <Young {...@props} />
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
