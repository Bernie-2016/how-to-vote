import React     from 'react'
import College   from 'components/blocks/college'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Young     from 'components/blocks/young'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'CT State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Connecticut has closed primaries {entity('mdash')} Connecticuters must register as a Democrat to vote for Bernie!
        </p>
        <p>
          New voters (and voters who moved) CAN register to vote on election day starting at 6AM at an Election Day Registration center. Click <a href='http://www.ct.gov/sots/cwp/view.asp?a=3179&q=534366' target='_blank'>here</a> for eligibility requirements and to find your location. (Unfortunately, if you are enrolled in a different political party, the deadline to change your registration to Democratric has already passed.)
        </p>
        <h3 className='caps'>ID Requirement</h3>
        <p>
          If you vote in person and have never voted in a federal election in your municipality, you might be asked to present a photo ID, utility bill, bank statement, government document, or paycheck that shows your address.
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
