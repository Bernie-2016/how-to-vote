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
  displayName: 'NE State Info'

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
            Nebraska has closed caucuses {entity('mdash')} Nebraskans must be registered Democrats to vote for Bernie Sanders! However, unaffiliated Nebraskans or those registered as Republicans can register to vote or change their party affiliation prior to or at the caucus.
          </p>
          <p>
            Nebraska has Same-Day Registration which allows you to register to vote at the caucuses on Sat, March 5.
          </p>
          <p>
            Nebraska caucuses at different times depending on your precinct; find yours <a href='http://nebraskacaucus2016.org' target='_blank'>here</a>.
          </p>
          <Young {...@props} />
          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
    </section>
