React     = require('react')
Sticky    = require('react-stickynode')
Button    = require('components/blocks/button')
College   = require('components/blocks/college')
DateBox   = require('components/blocks/dateBox')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
AddToCal  = require('components/widgets/addToCalWidget')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Reminder  = require('components/widgets/reminderWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')
StateInfo = require('components/blocks/stateInfo')
ShareBar  = require('components/blocks/shareBar')

module.exports = React.createClass
  displayName: 'ND State Info'

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
                North Dakota has open caucuses {entity('mdash')} any North Dakotan that intends to support the Democratic Party in the 2016 election can vote for Bernie Sanders, regardless of registration status. Caucuses will take place at 7:00pm, and doors will open at 5:30pm. Doors will close at 7:00pm, so please arrive early.
              </p>
            </div>
          </div>

          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <Button title='More Information' link={'http://demnpl.com/'} classes='blue' />
        </Sticky>
      </div>
    </section>
