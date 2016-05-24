React     = require('react')
College   = require('components/blocks/college')
Deadline  = require('components/blocks/deadline')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Young     = require('components/blocks/young')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
{verb}    = require('states')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'WA State Info'

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
            Washington has open caucuses {entity('mdash')} anyone can caucus for Bernie Sanders. Participation in Washington's caucuses is open to all voters who wish to participate as Democrats.
          </p>
          <p>
            Washington has Same-Day Registration which allows you to register to vote at the caucuses on Sat, March 26.
          </p>
          <p>
            <strong>Please plan to arrive no later than 9:30 AM.</strong> We strongly recommend <a href='https://www.demcaucus.com/register' target='_blank'>pre-registering for your caucus</a> to speed up the check-in process.
          </p>
          <Young {...@props} />
          <College {...@props} />
          <MoreInfo {...@props} />
          <p>
            You may also contact Bernie Sanders Washington State HQ:<br /> <a href='tel:+12064068527'>(206) 406-8527</a>.
          </p>
          <Offices {...@props} />
        </div>
      </div>
    </section>
