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
  displayName: 'TX State Info'

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
      </div>
      <div className='right'>
      </div>
    </section>
