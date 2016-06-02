React        = require('react')
College      = require('components/blocks/college')
Deadline     = require('components/blocks/deadline')
Military     = require('components/blocks/military')
MoreInfo     = require('components/blocks/moreInfo')
Offices      = require('components/widgets/officesWidget')
PollPlace    = require('components/widgets/pollPlaceWidget')
Share        = require('components/widgets/shareWidget')
entity       = require('utils/entity')
Sticky       = require('react-stickynode')
Scroll       = require('react-scroll')
Reminder     = require('components/widgets/reminderWidget')
ReactTooltip = require("react-tooltip")
AddToCal     = require('components/widgets/addToCalWidget')
StateInfo    = require('components/blocks/stateInfo')
ShareBar     = require('components/blocks/shareBar')

module.exports = React.createClass
  displayName: 'CA State Info'

  render: ->
    <section className='flex ca'>
      <StateInfo {...@props} />
      <ShareBar {...@props} />

      <div className='info-nav'>
        <Sticky top={0} bottomBoundary='section.flex'>
          <ul>
            {if @props.state.pollWgt
              <li>
                <Scroll.Link activeClass='active' to='polling-location' spy=true smooth=true offset=0>
                  <h3 className='caps'>Find Polling Location</h3>
                </Scroll.Link>
              </li>
            }
            <li>
              <Scroll.Link activeClass='active' to='key-info' spy=true smooth=true offset=0>
                <h3 className='caps'>Key Information</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='early-voting' spy=true smooth=true offset=0>
                <h3 className='caps'>Early & Absentee Voting</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='no-party' spy=true smooth=true offset=0>
                <h3 className='caps'>No Party Preference</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='college' spy=true smooth=true offset=0>
                <h3 className='caps'>College Students</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='military' spy=true smooth=true offset=0>
                <h3 className='caps'>Military/Overseas Voters</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='more-info' spy=true smooth=true offset=0>
                <h3 className='caps'>More Information</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='campaign-offices' spy=true smooth=true offset=0>
                <h3 className='caps'>Campaign Offices</h3>
              </Scroll.Link>
            </li>
          </ul>
        </Sticky>
      </div>

      <div className='left'>
        <PollPlace state={@props.state} />

        <div className='info'>
          <div id='key-info' className='key-info section expanded'>
            <div className='section-header'>
              <h3 className='caps'>Key Information</h3>
            </div>

            <div className='section-body'>
              <p>The California Democratic Primary takes place on June 7, 2016, and voters must be registered as a Democrat or No Party Preference by May 23, 2016 in order to participate.</p>

              <p>If you are an independent, make sure you're registered as No Party Preference. There is an Independent party in California which is not eligible to vote for Bernie — only Democrats and No Party Preference voters can. If you are registered No Party Preference, ask for a Democratic ballot when you go to vote and you’re all set!</p>
            </div>
          </div>

          <div id='early-voting'>
            <div className='section'>
              <div className='section-header'>
                <h3 className='caps'>Early & Absentee Voting</h3>
              </div>

              <div className='section-body'>
                <p>
                  In California, early voting begins on May 9th. There are two types of early voting:
                </p>
                <ol>
                  <li>
                    <strong>In person:</strong> Voters can walk into a polling location before the primary to cast their ballot. CA has one of these locations per county, usually the county registrar. Early vote locations are available <a href="http://www.sos.ca.gov/elections/upcoming-elections/june-7-2016-presidential-primary-election/county-early-voting/" target="_blank">here</a>.
                  </li>
                  <li>
                    <strong>Vote-by-mail</strong>: On May 9th, ballots will be mailed out. Mail-in ballots must be postmarked by June 7th. You can request a mail-in absentee ballot by submitting the form found <a href="http://www.sos.ca.gov/elections/where-and-how#get-a-ballot">here</a> before May 31, 2016. You can also file an emergency absentee ballot in person at your local <a href="http://www.sos.ca.gov/elections/voting-resources/county-elections-offices/">county elections office</a> anytime between June 1 and 7, 2016.

                  </li>
                </ol>
                <p>
                   Contact your <a href="http://www.sos.ca.gov/elections/voting-resources/county-elections-offices/">county elections office</a> to learn more about early voting in your county.
                </p>

                <p><strong>Note:</strong> Counties have indicated that the processing time for voter registration can become backlogged near the deadline. We strongly encourage Bernie supporters to have their vote-by-mail applications submitted by May 23, 2016.</p>
              </div>
            </div>

            <div className='section'>
              <div className='section-header'>
                <h3 className='caps'>Do vote-by-mail voters have to vote by mail?</h3>
              </div>

              <div className='section-body'>
                <p>
                  Voters can cast a vote at their assigned precinct if they bring his or her blank mail ballot. However, if the voter does not return the blank ballot, they will have to cast a provisional ballot.
                </p>
              </div>
            </div>
          </div>

          <div id='no-party'>
            <div className='section'>
              <div className='section-header'>
                <h3 className='caps'>No Party Preference</h3>
              </div>

              <div className='section-body'>
                <p>
                  No Party Preference, or NPP, is California’s term for an independent or unaffiliated voter, which means the voter declined to affiliate with a party. NPP voters account for 34% of the California electorate and are allowed to vote in the Democratic Presidential Primary.
                </p>

                <p>
                  If you are an NPP signed up to vote by mail, you should have received a ballot by now. If you requested a Democratic ballot, you should see Bernie’s name on it. If you didn’t, don’t worry. You can bring your blank NPP ballot with you to the polls and exchange it for a Democratic ballot when you arrive at your polling place on Tuesday, June 7. If you are registered NPP but are not a vote by mail voter, you can simply request a Democratic ballot at your polling place on Tuesday, June 7.
                </p>
              </div>
            </div>

            <div className='section'>
              <div className='section-header'>
                <h3 className='caps'>Other Party Affiliates</h3>
              </div>

              <div className='section-body'>
                <p>
                  You have to be a registered voter of the Democratic or NPP party to vote in the Democratic Presidential Primary. Other party affiliates cannot vote for Bernie. To do so, they must:
                </p>
                <ol>
                  <li>Re-register as a Democrat.</li>
                  <li>Re-register as No Party Preference. However, an NPP voter will need to complete additional steps to cast a ballot in the Democratic Presidential Primary (see above).</li>
                </ol>
              </div>
            </div>
          </div>

          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
    </section>
