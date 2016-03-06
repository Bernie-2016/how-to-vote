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
  displayName: 'WV State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          West Virginia has semi-closed primaries {entity('mdash')} West Virginians must register as a Democrat or undeclared to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <Young {...@props} />
        <h3 className='caps'>Early Voting</h3>
        <p>
          Early voting in the West Virginia Democratic Primary takes place bewteen April 27 and May 7, 2016. Contact your <a href='http://www.sos.wv.gov/elections/VoterRegistration/Pages/ClerkDirectory.aspx' target='_blank'>county clerk</a> to confirm early voting hours and locations.
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
