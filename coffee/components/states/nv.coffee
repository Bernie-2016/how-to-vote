React     = require('react')
Sticky    = require('react-stickynode')
Button    = require('components/blocks/button')
College   = require('components/blocks/college')
Young     = require('components/blocks/young')
AddToCal  = require('components/widgets/addToCalWidget')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Reminder  = require('components/widgets/reminderWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')
moment    = require('moment')
StateInfo = require('components/blocks/stateInfo')

module.exports = React.createClass
  displayName: 'NV State Info'

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
            Nevada has closed caucuses {entity('mdash')} Nevadans must register as a Democrat to vote for Bernie! However, Nevadans may register as/update registration to Democrat on the day of the caucus.
          </p>
          <p>
            Nevada has Same-Day Registration which allows you to register to vote at the caucuses on Sat, February 20.
          </p>
          <Young {...@props} />
          <College {...@props} />
          <h3 className='caps'>Military/Overseas Voters</h3>
          <p>
            If you live, work, are in the military or study abroad, you are able to participate in Nevada's Tele-Caucus on February 20th at 11am, but must <a href='http://action.nvdems.com/page/s/telecaucus' target='_blank'>pre-register</a> from Monday, February 1st - Sunday, February 14 (Midnight PST).
          </p>
          <p>
            After registering, you will receive a confirmation email. One week prior, you will receive a dial-in number and a unique pin. You must be dialed in to the Tele-Caucus by 12:00 p.m. PST.
          </p>
          <h3 className='caps'>More Information</h3>
          <p>
            For more information about the Democratic caucus in Nevada, visit the <a href='http://nvdems.com' target='_blank'>NVDems website</a>.
          </p>
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <Button title='Need a ride?' link='https://go.berniesanders.com/page/s/ride-caucus-day-nv' />
        </Sticky>
      </div>
    </section>
