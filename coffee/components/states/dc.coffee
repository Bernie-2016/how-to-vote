React     = require('react')
College   = require('components/blocks/college')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')
ShareBar  = require('components/blocks/shareBar')
Sticky     = require('react-stickynode')
Scroll     = require('react-scroll')
moment        = require('moment')
Button        = require('components/blocks/button')

module.exports = React.createClass
  displayName: 'DC State Info'

  render: ->
    <section className='flex'>
      <div className='state-info'>
        <div className='breadcrumbs'>
          Bernie 2016 > Vote for Bernie > {@props.state.name}
        </div>

        <div className='state'>
          <div className='primary-info'>
            <div className='mobile-share'>
              <Share {...@props}/>
            </div>

            <h2>
              Washington D.C.
            </h2>
            <h3 className='caps'><strong>{moment(@props.state.date, 'YYYY MM DD').format('ddd, MMM Do')}</strong> | {@props.state.type}</h3>
          </div>

          {unless not @props.state.parties
            <div className='can-vote'>
              <h3 className='caps'>Can Vote:</h3>

              <div className='party-icons'>
                {for party in @props.state.parties
                  <div className="icon #{party}" data-tip="Democrats"></div>
                }
                <ReactTooltip place="top" effect="solid"/>
              </div>
            </div>
          }
        </div>

        <div className='register'>

          {unless not @props.state.regDate
            <div>
              <div className='reg-deadline'>
                <h3 className='caps'>
                  <div><strong>Same-Day Registration <br /> for unregistered voters</strong></div>
                </h3>
              </div>

              <div className='reg-buttons'>
                {if @props.state.regLink and not moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days')
                  <Button title='Register' link={@props.state.regLink} classes='btn-success' />
                }

                {if @props.state.chkLink
                  <Button title='Check Registration' link={@props.state.chkLink} classes='btn-secondary' />
                }
              </div>
            </div>
          }
        </div>
      </div>
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
                <h3 className='caps'>Early Voting</h3>
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
                Washington, D.C. has same-day registration for unregistered voters, which allows you to register to vote at the primaries during early-voting or on election day if you are not already registered to vote. Previously registered voters must have updated their affiliation to Democrat by Monday, May 16.
              </p>
              <p>
                Mail-in voter registration for the Washington D.C. Democratic Primary closed on May 16, 2016. However, you can register to vote and cast a ballot in person at any ward if you are an unregistered voter.
              </p>
            </div>
          </div>

          <div className='section' id='early-voting'>
            <div className='section-header'>
              <h3 className='caps'>Early Voting</h3>
            </div>

            <div className='section-body'>
              <p>
                D.C. will permit early voting and same-day registration for unregistered voters from May 31 to June 11, 2016 at <a href='https://www.dcboee.org/ev/' target='_blank'>One Judiciary Place</a> and <a href='https://www.dcboee.org/ev/' target='_blank'>all other locations</a> between June 4 and June 11, 2016.
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
