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
ShareBar  = require('components/blocks/shareBar')

module.exports = React.createClass
  displayName: 'NM State Info'

  render: ->
    <section className='flex'>
  		<StateInfo {...@props} />
      <ShareBar {...@props} />

      <div className='left'>
        <PollPlace state={@props.state} title="Early Vote"/>

        <div className='info'>
          <div id='key-info' className='key-info section expanded'>
            <div className='section-header'>
              <h3 className='caps'>
                Key Information
              </h3>
            </div>

            <div className='section-body'>
              <p>
                New Mexico has closed primaries {entity('mdash')} New Mexicans must register as a Democrat to vote for Bernie!
              </p>
              <Deadline {...@props} />
            </div>
          </div>

          <div className='section'>
            <div className='section-header'>
              <h3 className='caps'>Early/Absentee Voting</h3>
            </div>

            <div className='section-body'>
              <p>
                If you can't make it to the polls on primary day, you can submit an absentee ballot by mail, or you can request and submit an absentee ballot in person at your county clerk's office beginning on May 10, 2016. Your county clerk will also designate locations for early voting between May 21 and June 4, 2016, and expanded early voting is available in many counties beginning on May 10, 2016. Contact your local county clerk's <a href='http://www.sos.state.nm.us/Voter_Information/County_Clerk_Information.aspx' target='_blank'>office</a> to learn more about early voting hours and locations near you.
              </p>
            </div>
          </div>

          <div className='section'>
            <div className='section-header'>
              <h3 className='caps'>Only 17?</h3>
            </div>

            <div className='section-body'>
              <p>
                Starting on May 18, 2016, you may still vote in New Mexico if you will be 18 years old by November 8, 2016.
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
      </div>
    </section>
