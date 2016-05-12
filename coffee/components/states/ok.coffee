React     = require('react')
College   = require('components/blocks/college')
Deadline  = require('components/blocks/deadline')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
Right     = require('components/blocks/right')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'OK State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Oklahoma has semi-closed primaries {entity('mdash')} Oklahomans must be registered as a Democrat or independent to vote for Bernie Sanders!
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>ID Requirement</h3>
        <p>
          Oklahoma requires you to present a photo identification in order to vote in person. Acceptable IDs must be issued by the U.S. government, the State of Oklahoma, or a federally recognized tribal government, must contain your name and photograph, and must be valid (i.e., unexpired) on the date of the primary.
        </p>
        <h3 className='caps'>Early/Absentee Voting</h3>
        <p>
          Early voting for the Oklahoma Democratic primary takes place on Thursday, February 25 and Friday, February 26, from 8 A.M. to 6 P.M., and on Saturday, February 27, from 9 A.M. to 2 P.M.  Oklahoma also lets all residents vote by absentee ballot. You can apply for an absentee ballot <a href='https://www.ok.gov/elections/documents/Oklahoma%20Absentee%20Ballot%20Application%20-%20fillable.pdf' target='_blank'>here</a> until February 24, 2016.
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
