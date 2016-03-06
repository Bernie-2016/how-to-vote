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
  displayName: 'MI State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Michigan has semi-open primaries {entity('mdash')} any Michigander can vote for Bernie Sanders. You must request a Democratic primary ballot in writing at the polling place or in your absentee ballot application.
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>ID Requirement</h3>
        <p>
          Michigan voters must provide a photo ID at the polls, or sign an affidavit attesting that they do not possess a photo ID.  Acceptable Photo IDs include a valid driver's license, a federal or state-issued photo ID, a U.S. passport, a military photo ID, a high school or college photo ID, or a tribal photo ID.
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
