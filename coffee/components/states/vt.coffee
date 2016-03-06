import React     from 'react'
import College   from 'components/blocks/college'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Young     from 'components/blocks/young'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'VT State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Vermont has open primaries {entity('mdash')} Vermonters can vote for Bernie Sanders regardless of their registered party.
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>Early/Absentee Voting</h3>
        <p>
          You can participate in early in-person voting for the Vermont democratic primary at your town clerk's office any time until Monday, February 29. Any voter can also request that their town clerk mail them an early voter absentee ballot any time before the primary. You can find the form to request an absentee ballot <a href='https://www.sec.state.vt.us/media/53483/VTAbsenteeRequestGeneric.pdf' target='_blank'>here</a>.
        </p>
        <Young {...@props} />
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
