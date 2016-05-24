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
ShareBar  = require('components/blocks/shareBar')

module.exports = React.createClass
  displayName: 'NJ State Info'

  render: ->
    <section className='flex'>
  		<StateInfo {...@props} />
  		<ShareBar {...@props} />

      <div className='left'>
        <PollPlace state={@props.state} />

        <div className='info'>
          <div id='key-info' className='key-info section expanded'>
            <div className='section-header'>
              <h3 className='caps'>
                Key Information
              </h3>
            </div>

            <div className='section-body'>
              <p>
                New Jersey has closed primaries {entity('mdash')} New Jerseyans must register as a Democrat to vote for Bernie! However, unaffiliated voters can declare their affiliation with the Democratic Party any time up to (and including) election day.
              </p>
              <Deadline {...@props} />
              <p>
                New Jerseyans registered with another political party must <a href='http://www.state.nj.us/state/elections/voting-information-party-declaration-forms.html' target='_blank'>change their affiliation</a> by April 13, 2016 in order to participate in the Democratic Party Primary.
              </p>
            </div>
          </div>

          <div className='section'>
            <div className='section-header'>
              <h3 className='caps'>Absentee Voting</h3>
            </div>

            <div className='section-body'>
              <p>
                If you can't make it to the polls on primary day, you can apply for a mail-in ballot until May 31, 2016. Find mail-in ballot applications for your county <a href='http://www.state.nj.us/state/elections/voting-information.html' target='_blank'>here</a>. If you don't apply for a mail-in ballot by the May 31 deadline, you can apply for (and submit) an absentee ballot in person at your local county clerk's <a href='http://www.state.nj.us/state/elections/voting-information-local-officials.html' target='_blank'>office</a> until June 6, 2016 at 3 P.M.
              </p>
            </div>
          </div>
          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
      </div>
    </section>
