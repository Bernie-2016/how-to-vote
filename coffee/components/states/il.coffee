React     = require('react')
College   = require('components/blocks/college')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
Right     = require('components/blocks/right')
Young     = require('components/blocks/young')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'IL State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Illinois has open primaries {entity('mdash')} Illinoisians can vote for Bernie Sanders regardless of their registered party.
        </p>
        <p>
          The regular registration deadline for the Illinois Democratic Primary is on February 16, 2016, but grace period registration continues at select sites until election day. Click <a href='https://www.elections.il.gov/Downloads/ElectionInformation/PDF/GracePeriodReg.pdf' target='_blank'>here</a> to learn more about grace period registration locations and hours.
        </p>
        <h3 className='caps'>Early/Absentee Voting</h3>
        <p>
          Early voting in the Illinois primary takes place between February 4 and March 14, 2016.  You can learn more about early voting locations and hours <a href='http://www.elections.state.il.us/votinginformation/earlyvotinglocations.aspx' target='_blank'>here</a>. Illinois also lets residents request mail-in absentee ballots until one day before the primary election. Learn more about mail-in voting in Illinois <a href='http://www.elections.state.il.us/downloads/electioninformation/pdf/votebymail.pdf' target='_blank'>here</a>.
        </p>
        <Young {...@props} />
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
