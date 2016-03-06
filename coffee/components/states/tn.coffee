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
  displayName: 'TN State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Tennessee has open primaries {entity('mdash')} Tennesseans can vote for Bernie Sanders regardless of their registered party.
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>ID Requirement</h3>
        <p>
          Tennessee requires you to present a photo identification in order to vote in person. Acceptable IDs include valid photo IDs issued by any state government, valid U.S. passports, valid U.S. military photo IDs, and Tennessee handgun carry permits with photos.
        </p>
        <h3 className='caps'>Early Voting</h3>
        <p>
          You can participate in early in-person voting for the Tennessee democratic primary between February 10, 2016 and February 23, 2016, during voting hours established by your county.
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
