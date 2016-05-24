React     = require('react')
College   = require('components/blocks/college')
Deadline  = require('components/blocks/deadline')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'TN State Info'

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
      </div>
      <div className='right'>
      </div>
    </section>
