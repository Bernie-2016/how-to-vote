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
  displayName: 'NY State Info'

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
            New York has closed primaries {entity('mdash')} New Yorkers must register as a Democrat to vote for Bernie!
          </p>
          <Deadline {...@props} />
          <p>
            If you are not registered as a Democrat, the deadline to change your party affiliation has already passed.
          </p>
          <h3 className='caps'>How and When to Register to Vote</h3>
          <ul>
            <li>
              You can register in person at your <a href='http://www.elections.ny.gov/CountyBoards.html' target='_blank'>county board of elections</a>
            </li>
            <li>
              or at any New York State <a href='http://www.elections.ny.gov/NVRA.html' target='_blank'>Agency-Based voter registration center</a>.
            </li>
            <li>
              You can <a href='http://www.elections.ny.gov/VoterRegFormRequest.html' target='_blank'>enter your name</a> directly into our mailing list database to have a New York State Voter Registration Form mailed to you. (NOTE: The same form can be downloaded, using the link below.)
            </li>
            <li>
              You can call our <strong>1-800-FOR-VOTE</strong> hotline to request a voter application.
            </li>
            <li>
              You can download a PDF version of the New York State Voter Registration Form: <a href='http://www.elections.ny.gov/NYSBOE/download/voting/voteform.pdf' target='_blank'>English</a> or <a href='http://www.elections.ny.gov/NYSBOE/download/voting/spanishvoteform.pdf' target='_blank'>Spanish</a>. Print the form, complete and sign it, and mail it to your <a href='http://www.elections.ny.gov/CountyBoards.html' target='_blank'>county board of elections</a>.
            </li>
          </ul>
          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
      </div>
    </section>
