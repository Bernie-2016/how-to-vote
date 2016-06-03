React     = require('react')
Deadline  = require('components/blocks/deadline')
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
  displayName: 'VI State Info'

  render: ->
    <section className='flex'>
  		<StateInfo {...@props} />
  		<ShareBar {...@props} />

      <div className='info-nav'>
        <Sticky top={0} bottomBoundary='section.flex'>
          <ul>
            <li>
              <Scroll.Link activeClass='active' to='key-info' spy=true smooth=true offset=0>
                <h3 className='caps'>Key Information</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='polling-place' spy=true smooth=true offset=0>
                <h3 className='caps'>Polling Location</h3>
              </Scroll.Link>
            </li>
            <li>
              <Scroll.Link activeClass='active' to='more-info' spy=true smooth=true offset=0>
                <h3 className='caps'>More Information</h3>
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
                Virgin Islands has closed caucuses {entity('mdash')} Virgin Islanders must register with the Democratic party to caucus for Bernie!
              </p>

              <p>
                Early voting takes place on Thursday, June 2, 2016 from 4:00pm to 8:00pm.
              </p>

              <p>
                Election Day voting takes place on Saturday, June 4, 2016, from 10:00am to 6:00pm.
              </p>

              <Deadline {...@props} />
            </div>
          </div>

          <div className='section' id='polling-place'>
            <div className='section-header'>
              <h3 className='caps'>Polling Location</h3>
            </div>

            <div className='section-body'>
              Your polling location corresponds to the address under which you are registered to vote:

              <ul>
                <li><strong>St. Croix</strong> - Gertrude's Restaurant</li>
                <li><strong>St. Thomas</strong> - Windward Passage Hotel</li>
                <li><strong>St. John</strong> - Fred's Restaurant</li>
              </ul>
            </div>

          </div>

          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
    </section>
