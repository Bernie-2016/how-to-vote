import React     from 'react'
import College   from 'components/blocks/college'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'WY State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Wyoming has closed caucuses {entity('mdash')} Wyomingites must register as a Democrat to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>Absentee Caucusing</h3>
        <p>
          If you can't make it to your county caucus, use <a href='http://www.wyodems.org/sites/wyodems2015/files/CaucusSurrogateForm_0.pdf' target='_blank'>this form</a> to appoint a surrogate who can vote for Bernie Sanders (and candidates for other offices) on your behalf.
        </p>
        <h3 className='caps'>Only 17?</h3>
        <p>
          If you are not yet 18 but will turn 18 by the November 8, 2016 presidential election, you can still vote for Bernie Sanders in your county caucus — just pre-register to vote as a Democrat with your county clerk <a href='https://soswy.state.wy.us/Elections/Docs/WYCountyClerks.pdf' target='_blank'>here</a>. (And when the presidential election comes, you'll be registered to vote as a Democrat).
        </p>
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
