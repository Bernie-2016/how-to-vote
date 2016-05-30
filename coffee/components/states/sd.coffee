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
  displayName: 'SD State Info'

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
              <Scroll.Link activeClass='active' to='id-requirement' spy=true smooth=true offset=0>
                <h3 className='caps'>ID Requirement</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='absentee-voting' spy=true smooth=true offset=0>
                <h3 className='caps'>Absentee Voting</h3>
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
                South Dakota has semi-closed primaries {entity('mdash')} South Dakotans must be registered as a Democrat or independent to vote for Bernie Sanders!
              </p>
              <Deadline {...@props} />
            </div>
          </div>

          <div className='section' id='id-requirement'>
            <div className='section-header'>
              <h3 className='caps'>ID Requirement</h3>
            </div>

            <div className='section-body'>
              <p>
                South Dakota asks that you present a photo identification in order to vote in person, but South Dakotans with no photo ID can still cast a regular ballot by signing a personal identification affidavit on election day.
              </p>
            </div>
          </div>

          <div className='section' id='absentee-voting'>
            <div className='section-header'>
              <h3 className='caps'>Absentee Voting</h3>
            </div>

            <div className='section-body'>
              <p>
                If you can't make it to the polls on primary day, you can submit an absentee ballot by <a href='https://sdsos.gov/elections-voting/voting/absentee-voting.aspx' target='_blank'>mail</a>, or or you can request and submit an absentee ballot in person at your county auditor's <a href='https://sdsos.gov/contact-us/county-auditors.aspx' target='_blank'>office</a> beginning on April 22, 2016.
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
