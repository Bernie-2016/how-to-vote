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
  displayName: 'MO State Info'

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
            Missouri has open primaries {entity('mdash')} Missourians can vote for Bernie Sanders regardless of their registered party.
          </p>
          <Deadline {...@props} />
          <h3 className='caps'>ID Requirement</h3>
          <p>
            Missouri requires you to present identification in order to vote in person.  Acceptable forms of identification include any ID issued by a federal, state of Missouri, or local agency; any ID issued by an institution of higher education; a copy of a current utility bill, bank statement, paycheck, government check, any other government document that contains your name and address; or a driver's license or state ID card from another state.
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
