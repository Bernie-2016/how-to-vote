React     = require('react')
College   = require('components/blocks/college')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
Right     = require('components/blocks/right')
Young     = require('components/blocks/young')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

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
          North Carolina requires you to present photo identification in order to vote in person.  Click <a href='http://voterid.nc.gov/photo-id.html' target='_blank'>here</a> for more information about what kinds of photo IDs you can use to vote. You may also be able to vote without an ID under certain circumstances -- click <a href='http://voterid.nc.gov/exceptions.html' target='_blank'>here</a> for more information.
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
