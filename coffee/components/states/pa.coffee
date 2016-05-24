React     = require('react')
College   = require('components/blocks/college')
Deadline  = require('components/blocks/deadline')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'PA State Info'

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
            Pennsylvania has closed primaries {entity('mdash')} Pennsylvanians must register as a Democrat to vote for Bernie!
          </p>
          <Deadline {...@props} />
          <h3 className='caps'>ID Requirement</h3>
          <p>
            If the Democratic primary is your first time voting in Pennsylvania, you might be asked to provide some form of identification, such as a Photo ID, or a current bank or utility statement. To learn more about documents that satisfy the ID requirement for first-time Pennsylvania voters, click <a href='https://iwillvote.com/guidelines/PA/#identification' target='_blank'>here</a>.
          </p>
          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
      </div>
    </section>
