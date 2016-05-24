React     = require('react')
Deadline  = require('components/blocks/deadline')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')
ShareBar  = require('components/blocks/shareBar')

module.exports = React.createClass
  displayName: 'VI State Info'

  render: ->
    <section className='flex'>
  		<StateInfo {...@props} />
  		<ShareBar {...@props} />

      <div className='left'>
        <PollPlace state={@props.state} />

        <div className='info'>
          <div id='key-info' className='key-info section expanded'>
            <div className='section-header'>
              <h3 className='caps'>
                Key Information
              </h3>
            </div>

            <div className='section-body'>
              <p>
                Virgin Islands has closed caucuses {entity('mdash')} Virgin Islanders must register with the Democratic party to caucus for Bernie!
              </p>

              <Deadline {...@props} />
            </div>
          </div>

          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
      </div>
    </section>
