import React     from 'react'
import College   from 'components/blocks/college'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'OR State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Oregon has closed primaries {entity('mdash')} Oregonians must register as a Democrat to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>How to Vote</h3>
        <p>
          Oregon is a vote-by-mail state; if you are a registered voter, your ballot will be automatically mailed to you. You can submit your ballot either by mailing it back or by dropping it at an official ballot drop-off location. You can find a drop-off location near you <a href='http://www.sos.state.or.us/dropbox/' target='_blank'>here</a>.
        </p>
        <p>
          You can drop off your ballot anytime between Wed, Apr 27, and Tue, May 17. You can mail in your ballot anytime before Wed, May 11; after that date, you should drop off your ballot to ensure it is counted in time for the election.
        </p>
        <h3 className='caps'>Absentee Voting</h3>
        <p>
          If you will be away from your home address during the election season, you can request an absentee ballot using the form <a href='http://sos.oregon.gov/elections/Documents/SEL111.pdf' target='_blank'>here</a>. The last day to request an absentee ballot is Thu, May 12; the last day to return an absentee ballot is Tue, May 17.
        </p>
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
