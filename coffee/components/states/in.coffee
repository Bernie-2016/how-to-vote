React     = require('react')
Sticky    = require('react-stickynode')
Button    = require('components/blocks/button')
College   = require('components/blocks/college')
DateBox   = require('components/blocks/dateBox')
Deadline  = require('components/blocks/deadline')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
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
  displayName: 'IN State Info'

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
            Indiana has open primaries {entity('mdash')} Hoosiers can vote for Bernie Sanders regardless of their registered party.
          </p>
          <Deadline {...@props} />
          <h3 className='caps'>ID Requirement</h3>
          <p>
            Indiana requires you to present a photo identification in order to vote in person. To learn more about what types of IDs are acceptable, click <a href='http://www.in.gov/sos/elections/2401.htm' target='_blank'>here</a>.
          </p>
          <h3 className='caps'>Early Voting</h3>
          <p>
            Early voting began on April 5th and continues until May 2nd. You can vote at your County Election Board or a satellite facility. Hours and locations vary across the state, so please check your <a href='https://indianavoters.in.gov/PublicSite/Public/FT1/PublicLookupMain.aspx' target='_blank'>County Election Board</a>.
          </p>
          <Young {...@props} />
          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <Button title='Commit to Vote' classes='btn-success' link='https://go.berniesanders.com/page/s/commit-to-vote-IN' />
        </Sticky>
      </div>
    </section>
