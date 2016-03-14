import React     from 'react'
import College   from 'components/blocks/college'
import Deadline  from 'components/blocks/deadline'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Young     from 'components/blocks/young'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import { verb }  from 'states'
import entity    from 'utils/entity'

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
          Washington has Same-Day Registration which allows you to register to vote at the caucuses on Sat, March 26. You can also pre-register for the caucuses <a href='https://www.demcaucus.com/register' target='_blank'>here</a>.
        </p>
        <p>
          <strong>Please plan to arrive no later than 9:30 AM.</strong>
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
          You may also contact Bernie Sanders Washington State HQ:<br /> <a href='tel:+12064068527'>(206) 406-8527</a>.
        </p>
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
