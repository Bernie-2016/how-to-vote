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
          If you are a new voter registering to vote by mail, your registration form must be postmarked by April 21, 2016. If you want to change your party enrollment from unaffiliated to Democratic, your registration form must be received by your municipal registrar of vote by that date. (Unfortunately, if you are enrolled in a different political party, the deadline to change your registration to Democratric has already passed.) You can register to vote or change your party affiliation from unaffiliated to Democratic in person at your local town hall until noon on April 25, 2016. Click <a href='http://www.sots.ct.gov/sots/lib/sots/electionservices/electforms/electforms/voter_reg_card_english_2015.pdf' target='_blank'>here</a> to print a voter registration form.
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
