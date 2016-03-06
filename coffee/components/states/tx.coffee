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
  displayName: 'TX State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Texas has open primaries {entity('mdash')} Texans can vote for Bernie Sanders regardless of their registered party.
        </p>
        <Deadline {...@props} />
        <p>
          You can look up your polling place for the primary <a href='https://teamrv-mvp.sos.texas.gov/MVP/mvp.do' target='_blank'>here</a>.
        </p>
        <h3 className='caps'>Early Voting</h3>
        <p>
          Early voting for the Texas Democratic Party Primary takes place between February 16 and 26, 2016. Contact your <a href='http://www.sos.state.tx.us/elections/voter/county.shtml' target='_blank'>county elections administrator</a> for information about early voting times and locations near you.
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
