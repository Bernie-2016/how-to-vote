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

              <p>
                Early voting takes place on Thursday, June 2, 2016 from 4:00pm to 8:00pm.
              </p>

              <p>
                Election Day voting takes place on Saturday, June 4, 2016, from 10:00am to 6:00pm.
              </p>

              <Deadline {...@props} />
            </div>
          </div>

          <div className='section'>

            <div className='section-header'>
              <h3 className='caps'>Polling Location</h3>
            </div>

            <div className='section-body'>
              Your polling location corresponds to the address under which you are registered to vote:

              <ul>
                <li><strong>St. Croix</strong> - Gertrude's Restaurant</li>
                <li><strong>St. Thomas</strong> - Windward Passage Hotel</li>
                <li><strong>St. John</strong> - To Be Determined</li>
              </ul>
            </div>

          </div>

          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
      </div>
    </section>
