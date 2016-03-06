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
  displayName: 'MS State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Mississippi has open primaries {entity('mdash')} Missippians can vote for Bernie Sanders regardless of their registered party.
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>ID Requirement</h3>
        <p>
          Mississippi requires you to present a valid photo ID in order to vote in person.  Acceptable forms of photo ID include driver's licenses, photo IDs issued by any branch of the United States government or any state government, a U.S. passport, a government employee photo ID, a firearms license, a student ID from an accredited Mississippi college or junior college, a U.S. military photo ID, a tribal photo ID, or a Mississippi voter identification card.
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
