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
  displayName: 'DC State Info'

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
              <h3 className='caps'>Key Information</h3>
            </div>

            <div className='section-body'>
              <p>
                Washington, D.C. has closed primaries {entity('mdash')} D.C. residents must register as a Democrat to vote for Bernie!
              </p>
              <p>
                Washington, D.C. has Same-Day Registration for unregistered voters, which allows you to register to vote at the primaries on Tue, June 14. Previously registered voters must update their affiliation to Democrat by Mon, May 16.
              </p>
              <p>
                Mail-in voter registration for the Washington D.C. Democratic Primary closes on May 16, 2016. However, you can register to vote and cast a ballot in person at One Judiciary Square from May 31 to June 11, 2016, between 8:30 A.M. and 7 P.M.
              </p>
            </div>
          </div>

          <div className='section' id='early-voting'>
            <div className='section-header'>
              <h3 className='caps'>Early Voting</h3>
            </div>

            <div className='section-body'>
              <p>
                D.C. will permit registration and early voting at designated <a href='https://www.dcboee.org/ev/' target='_blank'>locations in each ward</a> between June 4 and 11, 2016.
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
