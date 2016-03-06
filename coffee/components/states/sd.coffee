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
  displayName: 'SD State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          South Dakota has semi-closed primaries {entity('mdash')} South Dakotans must be registered as a Democrat or independent to vote for Bernie Sanders!
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>ID Requirement</h3>
        <p>
          South Dakota asks that you present a photo identification in order to vote in person, but South Dakotans with no photo ID can still cast a regular ballot by signing a personal identification affidavit on election day.
        </p>
        <h3 className='caps'>Absentee Voting</h3>
        <p>
          If you can't make it to the polls on primary day, you can submit an absentee ballot by <a href='https://sdsos.gov/elections-voting/voting/absentee-voting.aspx' target='_blank'>mail</a>, or or you can request and submit an absentee ballot in person at your county auditor's <a href='https://sdsos.gov/contact-us/county-auditors.aspx' target='_blank'>office</a> beginning on April 22, 2016.
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
