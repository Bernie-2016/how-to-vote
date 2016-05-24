React     = require('react')
Sticky    = require('react-stickynode')
Button    = require('components/blocks/button')
College   = require('components/blocks/college')
DateBox   = require('components/blocks/dateBox')
Deadline  = require('components/blocks/deadline')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
AddToCal  = require('components/widgets/addToCalWidget')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Reminder  = require('components/widgets/reminderWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')
moment    = require('moment')

module.exports = React.createClass
  displayName: 'AK State Info'

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
            Alaska has closed caucuses {entity('mdash')} Alaskans must register as a Democrat to vote for Bernie! However, Alaskans may update their party affiliation to Democrat on the day of the caucus.
          </p>
          <Deadline {...@props} />
          <p>
            You can look up your caucus location <a href='http://www.alaskademocrats.org/caucus-locations/' target='_blank'>here</a>.
          </p>
          <h3 className='caps'>Only 17?</h3>
          <p>
            You may still caucus in Alaska if you will be 18 years old by June 24, 2016.
          </p>
          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <Button title='Commit to Caucus' link='https://go.berniesanders.com/page/s/commit-alaska' classes='btn-success'/>
        </Sticky>
      </div>
    </section>
