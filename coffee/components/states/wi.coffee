import React     from 'react'
import College   from 'components/blocks/college'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'WI State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Wisconsin has open primaries {entity('mdash')} Wisconsinites can vote for Bernie Sanders regardless of their registered party.
        </p>
        <p>
          <a href='https://myvote.wi.gov/OnlineRegistration/Default.aspx' target='_blank'>Mail-in registration</a> to vote in the Wisconsin Democratic Primary closes on March 16, 2016. Wisconsinites who wish to register after that date can do so until April 1, 2016 by bringing proof of residency to the office of their <a href='http://www.gab.wi.gov/clerks/directory'>municipal clerk</a>. You can also register at your polling place on election day by bringing proof of residency and certifying that you've been a resident of Wisconsin for 28 days.
        </p>
        <h3 className='caps'>ID Requirement</h3>
        <p>
          Wisconsin requires you to present a photo identification in order to vote in person. Click <a href='http://bringit.wisconsin.gov' target='_blank'>here</a> to learn more about acceptable photo IDs.
        </p>
        <h3 className='caps'>Early/Absentee Voting</h3>
        <p>
          You can participate in early voting for the Wisconsin Democratic Primary at your municipal clerk's <a href='http://www.gab.wi.gov/clerks/directory' target='_blank'>office</a> between March 21 and April 1, 2016. Or you can <a href='http://www.gab.wi.gov/elections-voting/voters/absentee' target='_blank'>request</a> a mail-in absentee ballot from your municipal clerk until March 31, 2016.
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
