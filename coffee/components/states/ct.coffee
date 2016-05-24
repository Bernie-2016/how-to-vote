React     = require('react')
College   = require('components/blocks/college')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Young     = require('components/blocks/young')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'CT State Info'

  render: ->
    <section className='flex'>
  		<StateInfo {...@props} />

      <div className='left'>
        <div className='info'>
          <h2>
            Key Information
            <Share {...@props} />
          </h2>
          <PollPlace state={@props.state} />
          <p>
            Connecticut has closed primaries {entity('mdash')} Connecticuters must register as a Democrat to vote for Bernie!
          </p>
          You must have been registered to vote by 12PM on Mon, Apr 25 in Connecticut.
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
      </div>
      <div className='right'>
      </div>
    </section>
