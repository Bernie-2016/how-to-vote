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
  displayName: 'FL State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Florida has closed primaries {entity('mdash')} Floridans must register as a Democrat to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>ID Requirement</h3>
        <p>
          Florida requires people voting in person to present a valid photo ID. Acceptable IDs include a Florida driver's license, a Florida Department of Highway Safety and Motor Vehicle identification card, a U.S. Passport, a debit or credit card with a photograph, a military photo ID, a student photo ID, a retirement center ID, a neighborhood association ID, or a public assistance ID. If your photo ID does not contain a signature you will be asked to present another ID with a signature.
        </p>
        <h3 className='caps'>Early Voting</h3>
        <p>
          You can participate in early in-person voting for the Florida Democratic Primary between March 5 and 12, 2016. You can find early voting locations and times <a href='http://dos.myflorida.com/elections/for-voters/voting/early-voting/' target='_blank'>here</a>.
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
