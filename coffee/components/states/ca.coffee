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
  displayName: 'CA State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          California has semi-closed primaries {entity('mdash')} Californians must register as a Democrat or "no party preference" to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <p>
          If you're independent, make sure you're registered as "no party preference". There is also an Independent party in California which is NOT eligible to vote for Bernie -- only Democrats and "no party preference" voters can vote for Bernie in the primary. If you are registered "no party preference", when you go to vote just ask for a "democratic ballot" and you're all set!
        </p>
        <h3 className='caps'>Early/Absentee Voting</h3>
        <p>
          In California, early voting begins on May 9th. There are two types of early voting:
        </p>
        <p>
          <ol>
            <li>
              <strong>In person:</strong> Voters can walk into a polling location before the primary to cast their ballot. CA has one of these locations per county, usually the county registrar. We expect the CA Secretary of State to release a list of early vote locations in early May.
            </li>
            <li>
              <strong>Vote-by-mail</strong>: On May 9th, ballots will be mailed out. Mail-in ballots must be postmarked by June 7th. You can request a mail-in absentee ballot by submitting the form found <a href="http://www.sos.ca.gov/elections/where-and-how#get-a-ballot">here</a> before May 31, 2016. You can also file an emergency absentee ballot in person at your local <a href="http://www.sos.ca.gov/elections/voting-resources/county-elections-offices/">county elections office</a> anytime between June 1 and 7, 2016.

            </li>
          </ol>
        </p>
        <p>
           Contact your <a href="http://www.sos.ca.gov/elections/voting-resources/county-elections-offices/">county elections office</a> to learn more about early voting in your county.
        </p>
        
        <p><strong>Note:</strong> Counties have indicated that the processing time for voter registration can become backlogged near the deadline. We strongly encourage Bernie supporters to have their vote-by-mail applications submitted by May 23, 2016.</p>

        <h3 className='caps'>No Party Preference</h3>
        <p>
          "No Party Preference," or NPP is California’s term for an independent or unaffiliated voter, which means the voter declined to affiliate with a party. NPP voters account for 34% of the California electorate and are allowed to vote in the Democratic Presidential Primary.
        </p>

        <p>
          <strong>NPP voters can vote-by-mail for Bernie, but it’s important to understand the steps and options:</strong>
            <ol>
              <li>
                All NPP voters should have received a form by mail asking if they want to receive a Democratic Party Presidential Primary ballot. Check with your <a href="http://www.sos.ca.gov/elections/voting-resources/county-elections-offices/">county</a> for details.</li>
              <li>
                An NPP vote-by-mail voter can also decide to re-register as a democrat. The deadline to change affiliation is May 23rd.  Registrants will receive a Democratic ballot in the mail. NPP voters can re-register online <a href="http://registertovote.ca.gov/">here</a> or at the county office.
              </li>
            </ol>

            An NPP voter can always take their mail-in ballot to a polling location and request a Democratic presidential primary ballot in person.
        </p>

        <h3 className='caps'>Do vote-by-mail voters have to vote by mail?</h3>
        <p>
          Voters can cast a vote at their assigned precinct if they bring his or her blank mail ballot. However, if the voter does not return the blank ballot, they will have to cast a provisional ballot.
        </p>

        <h3 className='caps'>Other Party Affiliates</h3>
        <p>
          You have to be a registered voter of the Democratic or NPP party to vote in the Democratic Presidential Primary. Other party affiliates cannot vote for Bernie. To do so, they must:
          <ol>
            <li>Re-register as a Democrat.</li>
            <li>Re-register as No Party Preference. However, an NPP voter will need to complete additional steps to cast a ballot in the Democratic Presidential Primary (see above).</li>
          </ol>
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
