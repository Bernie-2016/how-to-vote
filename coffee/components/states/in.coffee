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
          Early in-person voting for the Indiana Democratic Primary takes place at your local circuit court clerk's office; follow <a href='http://www.in.gov/judiciary/2794.htm' target='_blank'>this link</a> and select your county from the list. Early voting begins April 5, 2016 and ends at noon on May 2, 2016.
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
