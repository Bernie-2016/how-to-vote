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
  displayName: 'RI State Info'

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
            Rhode Island has semi-closed primaries {entity('mdash')} Rhode Islanders must register as a Democrat or undeclared to vote for Bernie!
          </p>
          <Deadline {...@props} />
          <p>
            Rhode Islanders registered to vote as members of another party cannot vote for Bernie Sanders in the Democratic primary unless they re-registered as Democrats by January 27, 2016.  However, Rhode Islanders who are unaffiliated with any political party and have not previously voted in another party's primary can vote in the Democratic primary.
          </p>
          <h3 className='caps'>ID Requirement</h3>
          <p>
            Rhode Island generally requires you to present photo identification in order to vote in person. However, if you don't have an acceptable photo ID, you can present an alternative form of identification, such as a utility bill or student ID. To learn more about what types of IDs and documents satisfy Rhode Island's requirements, click <a href='http://sos.ri.gov/divisions/elections/Voters/voter-id' target='_blank'>here</a>.
          </p>
          <h3 className='caps'>Absentee Voting</h3>
          <p>
            If you think you might not be able to vote in person at your local polling place, you can apply for a mail-in absentee ballot by submitting <a href='http://sos.ri.gov/assets/downloads/documents/elections-and-voting/mailballots/Mail-Ballot-Application-Democrat-English.pdf' target='_blank'>this form</a> to your local board of canvassers by April 5, 2016. If you miss that deadline, you can apply for a mail-in absentee ballot at your local board of canvassers until April 25, 2016. Your mail-in ballot must be received by the Board of Elections by 8 P.M. on April 26, 2016.
          </p>
          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
      </div>
    </section>
