React     = require('react')
College   = require('components/blocks/college')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
Right     = require('components/blocks/right')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'DC State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Washington, D.C. has closed primaries {entity('mdash')} D.C. residents must register as a Democrat to vote for Bernie!
        </p>
        <p>
          Washington, D.C. has Same-Day Registration for unregistered voters, which allows you to register to vote at the primaries on Tue, June 14. Previously registered voters must update their affiliation to Democrat by Mon, May 16.
        </p>
        <p>
          Mail-in voter registration for the Washington D.C. Democratic Primary closes on May 16, 2016. However, you can register to vote and cast a ballot in person at One Judiciary Square from May 31 to June 11, 2016, between 8:30 A.M. and 7 P.M.
        </p>
        <h3 className='caps'>Early Voting</h3>
        <p>
          D.C. will permit registration and early voting at designated <a href='https://www.dcboee.org/ev/' target='_blank'>locations in each ward</a> between June 4 and 11, 2016.
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
