React     = require('react')
College   = require('components/blocks/college')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Young     = require('components/blocks/young')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'ME State Info'

  render: ->
    <section className='flex'>
  		<StateInfo {...@props} />

      <div className='left'>
        <div className='info'>
          <h2>
            Key Information
            <Share {...@props} />
          </h2>
          <PollPlace state={@props.state} />
          <p>
            Maine has closed caucuses {entity('mdash')} Mainers must register as a Democrat to vote for Bernie!
          </p>
          <p>
            Maine has Same-Day Registration which allows you to register to vote at the caucuses on Sun, March 6 for unregistered and unaffiliated voters. Previously registered voters must update their affiliation to Democrat by Fri, Feb 19.
          </p>
          <h3 className='caps'>Absentee Caucusing</h3>
          <p>
            Can't attend the caucus in person? You can request an absentee ballot <a href='http://www.mainedems.org/page/request-absentee-ballot' target='_blank'>here</a> and return it anytime before Wed, March 2.
          </p>
          <Young {...@props} />
          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
      </div>
    </section>
