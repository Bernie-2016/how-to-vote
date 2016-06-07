React     = require('react')
College   = require('components/blocks/college')
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
  displayName: 'MT State Info'

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
              <Scroll.Link activeClass='active' to='early-voting' spy=true smooth=true offset=0>
                <h3 className='caps'>Early/Absentee Voting</h3>
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
                Montana has open primaries {entity('mdash')} Montanans can vote for Bernie Sanders regardless of their registered party. Voting takes place on June 7th, 2016, from 7 a.m. to 8 p.m.
              </p>

              <p>
                Montana has same-day registration, which allows you to register to vote any time before or on Tuesday, June 7, 2016. To register, you need to visit your <a href='http://sos.mt.gov/Elections/Counties/Election_Administrators.asp' target='_blank'>county elections office</a> between the hours of 7 a.m. and 8 p.m. on election day. Call ahead to <a href='http://sos.mt.gov/Elections/Counties/Election_Administrators.asp' target='_blank'>your office</a> to verify that your location is correct before going.
              </p>

              <p>
                <strong>Note:</strong> When you go to vote, make sure you sign the outside envelope before dropping your ballot into the box. If there is no signature, your vote will not be counted.
              </p>

              <p><strong>If you have any problems voting in Montana, call the Bernie Voter Protection Hotline at <a href="tel:14062065480">(406) 206-5480 </a>.</strong></p>
            </div>
          </div>

          <div className='section' id='early-voting'>
            <div className='section-header'>
              <h3 className='caps'>Already Voted Absentee?</h3>
            </div>

            <div className='section-body'>
              <p>
                If you've already voted absentee, you can check the status of your paperwork and absentee ballot <a href="https://app.mt.gov/voterinfo/" target="_blank">here</a>.
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
