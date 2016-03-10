import React     from 'react'
import College   from 'components/blocks/college'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Young     from 'components/blocks/young'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'NC State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          North Carolina has semi-closed primaries {entity('mdash')} North Carolinians must be registered as a Democrat or independent to vote for Bernie Sanders!
        </p>
        <p>
          The regular registration deadline for the North Carolina Democratic Primary is on February 19, 2016, but North Carolina has one-stop early voting and same-day registration at select locations between March 3 and 12, 2016. Visit <a href='http://enr.ncsbe.gov/OS_Sites/' target='_blank'>this link</a> to find an early voting location near you. To take advantage of same-day registration, you must bring official proof of a current residential address in your county, such as a valid photo ID or an official document showing your address (e.g., a bank statement or utility bill) no more than two months old. Electronic versions of such documents are acceptable if they come from the original source (e.g., the bank or utility) and show your name and current address. 
        </p>
        <h3 className='caps'>ID Requirement</h3>
        <p>
          North Carolina requires you to present photo identification in order to vote in person.  Click <a href='http://voterid.nc.gov/photo-id.html' target='_blank'>here</a> for more information about what kinds of photo IDs you can use to vote.
        </p>
        <h3 className='caps'>Absentee Voting</h3>
        <p>
          Any registered North Carolina voter can also request a mail-in absentee ballot.  To learn more about absentee voting, click <a href='https://www.ncsbe.gov/Voting/Absentee-Voting' target='_blank'>here</a>.
        </p>
        <Young {...@props} />
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
