import React     from 'react'
import College   from 'components/blocks/college'
import Deadline  from 'components/blocks/deadline'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'
import moment    from 'moment'

module.exports = React.createClass
  displayName: 'WY State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace title='County Caucus' state={@props.state} />
        <p>
          Wyoming has closed caucuses {entity('mdash')} Wyomingites must register as a Democrat to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <p>
          You can find a full list of caucus locations <a href='http://www.wyodems.org/find-my-county-caucus' target='_blank'>here</a>. If you want to skip the line on caucus day, you can fill out the <a href='http://www.wyodems.org/form/-5238963398761904128' target='_blank'>pre-registration form</a>.
        </p>
        <h3 className='caps'>Absentee Caucusing</h3>
        <p>
          If you are unable to caucus in-person on April 9th due to religious observance, military service, disability or illness, or work schedule, you can submit the <a href='http://www.wyodems.org/sites/wyodems2015/files/CaucusSurrogateForm.pdf' target='_blank'>Surrogate Affidavit form</a> no later than April 1 and your vote will count for Bernie.
        </p>
        <h3 className='caps'>Only 17?</h3>
        <p>
          If you are not yet 18 but will turn 18 by the November 8, 2016 presidential election, you can still vote for Bernie Sanders in your county caucus {entity('mdash')} just pre-register to vote as a Democrat with your county clerk <a href='https://soswy.state.wy.us/Elections/Docs/WYCountyClerks.pdf' target='_blank'>here</a>. (And when the presidential election comes, you'll be registered to vote as a Democrat).
        </p>
        <College {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
