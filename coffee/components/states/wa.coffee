import React                 from 'react'
import Sticky                from 'react-stickynode'
import Button                from 'components/blocks/button'
import College               from 'components/blocks/college'
import DateBox               from 'components/blocks/dateBox'
import Deadline              from 'components/blocks/deadline'
import MoreInfo              from 'components/blocks/moreInfo'
import Young                 from 'components/blocks/young'
import AddToCal              from 'components/widgets/addToCalWidget'
import Offices               from 'components/widgets/officesWidget'
import PollPlace             from 'components/widgets/pollPlaceWidget'
import Reminder              from 'components/widgets/reminderWidget'
import Share                 from 'components/widgets/shareWidget'
import $                     from 'jquery'
import moment                from 'moment'
import { primaryType, verb } from 'states'
import entity                from 'utils/entity'

module.exports = React.createClass
  displayName: 'WA State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Washington has open caucuses {entity('mdash')} anyone can caucus for Bernie Sanders. Participation in Washington's caucuses is open to all voters who wish to participate as Democrats.
        </p>
        <p>
          Washington has Same-Day Registration which allows you to register to vote at the caucuses on Sat, March 26.
        </p>
        <h3 className='caps'>Can't attend in person?</h3>
        <p>
          You can complete affidavit forms from now until March 18th. Anyone who cannot attend the caucuses for the reasons below will be allowed to submit a "surrogate affidavit", allowing you to cast your vote remotely.
        </p>
        <ul>
          <li>Religious observance</li>
          <li>Military service</li>
          <li>Work schedule</li>
          <li>Disability or illness</li>
        </ul>
        <p>
          You can download the surrogate affidavit <a href='http://www.wa-democrats.org/sites/wadems/files/documents/2016%20Precinct%20Caucuses%20-%2099%20-%20Surrogate%20Affidavit%20Form.pdf' target='_blank'>here</a>. Please scan and email forms to <a href='mailto:WACaucus@berniesanders.com'>WACaucus@berniesanders.com</a> on or before March 18, 2016.
        </p>
        <Young {...@props} />
        <College {...@props} />
        <MoreInfo {...@props} />
        <p>
          You may also contact Bernie Sanders Washington State HQ:<br /> <a href='tel:+12065551212'>(206) 555-1212</a>.
        </p>
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
