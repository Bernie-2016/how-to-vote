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
Sticky     = require('react-stickynode')
Scroll     = require('react-scroll')

module.exports = React.createClass
  displayName: 'NM State Info'

  render: ->
    <section className='flex'>
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
              <Scroll.Link activeClass='active' to='absentee-voting' spy=true smooth=true offset=0>
                <h3 className='caps'>Absentee Voting</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='identification' spy=true smooth=true offset=0>
                <h3 className='caps'>Identification Requirement</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='underage' spy=true smooth=true offset=0>
                <h3 className='caps'>Only 17?</h3>
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
              <h3 className='caps'>
                Key Information
              </h3>
            </div>

            <div className='section-body'>
              <p>
                New Mexico has closed primaries {entity('mdash')} New Mexicans must register as a Democrat to vote for Bernie!
              </p>
              <Deadline {...@props} />
            </div>
          </div>

          <div className='section' id='absentee-voting'>
            <div className='section-header'>
              <h3 className='caps'>Absentee Voting</h3>
            </div>

            <div className='section-body'>
              <p>
                If you can't make it to the polls on primary day, you can submit an absentee ballot by mail, or you can request and submit an absentee ballot in person at your <a href='http://www.sos.state.nm.us/Voter_Information/County_Clerk_Information.aspx' target='_blank'>county clerk's office</a> beginning on May 10, 2016.
              </p>
            </div>
          </div>

          <div className='section' id='identification'>
            <div className='section-header'>
              <h3 className='caps'>What identification do I need to provide when I vote?</h3>
            </div>

            <div className='section-body'>
              <p>
                A physical form of identification is only required for first-time New Mexico voters who registered by mail and did not include identification with their voter registration application form.
              </p>

              <p>
                Otherwise, you will be asked to provide a verbal or written statement of identification including your name, year of birth, and registered address.
              </p>

              <p>Acceptable forms of ID include (1) a current and valid photo identification; or (2) a current utility bill, bank statement, government check, paycheck, student identification card or other government document, including identification issued by an Indian nation, tribe or pueblo that shows your name and current address.</p>
            </div>
          </div>

          <div className='section' id='underage'>
            <div className='section-header'>
              <h3 className='caps'>Only 17?</h3>
            </div>

            <div className='section-body'>
              <p>
                Starting on May 18, 2016, you may still vote in New Mexico if you will be 18 years old by November 8, 2016.
              </p>
            </div>
          </div>

          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
    </section>
