React     = require('react')
College   = require('components/blocks/college')
Deadline  = require('components/blocks/deadline')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Young     = require('components/blocks/young')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'MD State Info'

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
            Maryland has closed primaries {entity('mdash')} Marylanders must register as a Democrat to vote for Bernie!
          </p>
          <Deadline {...@props} />
          <h3 className='caps'>Early/Absentee Voting</h3>
          <p>
            Early voting for the Maryland Democratic Primary takes place between April 14 and 21, 2016. Find an early voting location near you <a href='http://www.elections.state.md.us/voting/early_voting.html' target='_blank'>here</a>. You may register to vote and vote in person during early voting even if you were not registered by the Apr 5 deadline.
          </p>
          <p>
            The deadline to request for an absentee ballot to be delivered to you by mail is April 19, 2016. You can request for an absentee ballot to be delivered to you through the Internet until April 22, 2016, or you can pick up an absentee ballot in person at your local <a href='http://www.elections.state.md.us/about/county_boards.html' target='_blank'>board of elections</a> until election day.
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
