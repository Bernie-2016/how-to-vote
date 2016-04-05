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
          Call our hotline with any questions: <a href='tel:+16083711257' target='_blank'>(608) 371-1257</a>
        </p>
        <p>
          Wisconsin has open primaries {entity('mdash')} Wisconsinites can vote for Bernie Sanders regardless of their registered party.
        </p>
        <p>
          Polling locations are open from <strong>7AM-8PM</strong> across the state. If you're in line by 8PM, you will be permitted to vote.
        </p>
        <p>
          <strong>You can register to vote at your polling place on election day</strong> by bringing proof of residency and certifying that you've been a resident of Wisconsin for 28 days.
        </p>
        <div className='vid-container'>
          <iframe src='https://www.youtube.com/embed/Bm0XvRAjK-w' frameborder='0' allowfullscreen />
        </div>
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
