React     = require('react')
Sticky    = require('react-stickynode')
Button    = require('components/blocks/button')
College   = require('components/blocks/college')
DateBox   = require('components/blocks/dateBox')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
AddToCal  = require('components/widgets/addToCalWidget')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Reminder  = require('components/widgets/reminderWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')
StateInfo = require('components/blocks/stateInfo')
ShareBar  = require('components/blocks/shareBar')
Sticky     = require('react-stickynode')
Scroll     = require('react-scroll')

module.exports = React.createClass
  displayName: 'ND State Info'

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
                North Dakota has open caucuses {entity('mdash')} any North Dakotan that intends to support the Democratic Party in the 2016 election can vote for Bernie Sanders, regardless of registration status. Caucuses will take place at 7:00 p.m., and doors will open at 5:30 p.m. Doors will close at 7:00 p.m., so please arrive early.
              </p>
            </div>
          </div>

          <div id='caucus' className='section'>
            <div className='section-header'>
              <h3 className='caps'>
                Caucus for Bernie
              </h3>
            </div>

            <div className='section-body'>
              <p>
                Want to caucus for Bernie in North Dakota?  You need to meet four requirements:
              </p>

              <ol>
                <li>Be a US citizen</li>
                <li>Be 18 years of age or older</li>
                <li>Be a resident of North Dakota</li>
                <li>Affirm on caucus night that you will be a Democrat.</li>
              </ol>

              <p>
                You do not need to show any form of ID to caucus, and you don't need to register to vote {entity('mdash')} there is no voter registration in ND.
              </p>

              <a className="btn btn-success" href="http://demnpl.com/caucus/pre-register/" target="_blank">Pre-Register to Caucus</a>

              <a className="btn btn-secondary" href="http://demnpl.com/caucus/locations/" target="_blank">Find Caucus Location</a>
            </div>
          </div>

          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
    </section>
