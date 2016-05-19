React     = require('react')
College   = require('components/blocks/college')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
Right     = require('components/blocks/right')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'MT State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} title="Early Vote" />
        <p>
          Montana has open primaries {entity('mdash')} Montanans can vote for Bernie Sanders regardless of their registered party.
        </p>
        <p>
          Montana has Same-Day Registration which allows you to register to vote at the primaries on Tue, June 7.
        </p>
        <p>
          Montanans can <a href='http://sos.mt.gov/ELECTIONS/Officials/Forms/documents/Voter-Registration-Application.pdf' target='_blank'>register</a> to vote by mail until May 9, 2016. After that date, you can register to vote in person at your <a href='http://sos.mt.gov/elections/Forms/elections/electionadministrators.pdf' target='_blank'>county elections office</a>.
        </p>
        <h3 className='caps'>Early/Absentee Voting</h3>
        <p>
          Early voting for the Montana Democratic Primary takes place between May 9 and June 6, 2016. To participate in early voting, you can request and submit an absentee ballot by <a href='http://sos.mt.gov/elections/Officials/Forms/documents/Application-for-Absentee-Ballot.pdf' target='_blank'>mail</a> or in person at your <a href='http://sos.mt.gov/elections/Forms/elections/electionadministrators.pdf' target='_blank'>county elections office</a>.
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
