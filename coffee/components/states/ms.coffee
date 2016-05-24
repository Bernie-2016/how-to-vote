React     = require('react')
College   = require('components/blocks/college')
Deadline  = require('components/blocks/deadline')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Young     = require('components/blocks/young')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'MS State Info'

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
            Mississippi has open primaries {entity('mdash')} Mississippians can vote for Bernie Sanders regardless of their registered party.
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
      </div>
    </section>
