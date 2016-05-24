React     = require('react')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'AS State Info'

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
            American Samoa has closed caucuses {entity('mdash')} American Samoans must register with the Democratic party to caucus for Bernie!
          </p>
          <p>
            There is no deadline to register to vote.  Voters who wish to participate may register and declare affiliation with the Democratic Party at the caucus on Tuesday, March 1st.
          </p>
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
      </div>
    </section>
