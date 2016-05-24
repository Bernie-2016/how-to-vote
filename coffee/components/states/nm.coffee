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
  displayName: 'NM State Info'

  render: ->
    <section className='flex'>
  		<StateInfo {...@props} />

      <div className='left'>
        <div className='info'>
          <h2>
            Key Information
            <Share {...@props} />
          </h2>
          <PollPlace state={@props.state} title="Early Vote"/>
          <p>
            New Mexico has closed primaries {entity('mdash')} New Mexicans must register as a Democrat to vote for Bernie!
          </p>
          <Deadline {...@props} />
          <h3 className='caps'>Early/Absentee Voting</h3>
          <p>
            If you can't make it to the polls on primary day, you can submit an absentee ballot by mail, or you can request and submit an absentee ballot in person at your county clerk's office beginning on May 10, 2016. Your county clerk will also designate locations for early voting between May 21 and June 4, 2016, and expanded early voting is available in many counties beginning on May 10, 2016. Contact your local county clerk's <a href='http://www.sos.state.nm.us/Voter_Information/County_Clerk_Information.aspx' target='_blank'>office</a> to learn more about early voting hours and locations near you.
          </p>
          <h3 className='caps'>Only 17?</h3>
          <p>
            Starting on May 18, 2016, you may still vote in New Mexico if you will be 18 years old by November 8, 2016.
          </p>
          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
    </section>
