React     = require('react')
Sticky    = require('react-stickynode')
Button    = require('components/blocks/button')
DateBox   = require('components/blocks/dateBox')
Deadline  = require('components/blocks/deadline')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
AddToCal  = require('components/widgets/addToCalWidget')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Reminder  = require('components/widgets/reminderWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')
moment    = require('moment')
StateInfo = require('components/blocks/stateInfo')

module.exports = React.createClass
  displayName: 'WV State Info'

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
            West Virginia has semi-closed primaries {entity('mdash')} West Virginians must register as a Democrat, Independent or unaffiliated to vote for Bernie!
          </p>
          <Deadline {...@props} />
          <h3 className='caps'>Only 17?</h3>
          <p>
            You may still vote in West Virginia if you will be 18 years old by November 8, 2016 (if you registered by the April 19 deadline).
          </p>
          <h3 className='caps'>Early Voting</h3>
          <p>
            Early voting in the West Virginia Primary takes place between April 27 and May 7, 2016. Contact your <a href='http://www.sos.wv.gov/elections/Vote/EarlyVoting/Pages/default.aspx' target='_blank'>county clerk</a> to confirm early voting hours and locations.
          </p>
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <Button title='Commit to Vote' classes='btn-success' link='https://go.berniesanders.com/page/s/commit-to-vote-WV?source=votesite' />
        </Sticky>
      </div>
    </section>
