React     = require('react')
Sticky    = require('react-stickynode')
DateBox   = require('components/blocks/dateBox')
MoreInfo  = require('components/blocks/moreInfo')
AddToCal  = require('components/widgets/addToCalWidget')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Reminder  = require('components/widgets/reminderWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'NMI State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          The Northern Mariana Islands have closed caucuses {entity('mdash')} Northern Mariana Islanders must register with the Democratic party to caucus for Bernie.
        </p>
        <p>
          There is no deadline to register to vote. Voters who wish to participate may register and declare affiliation with the Democratic Party at the caucus on March 12th.
        </p>
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <DateBox title='Caucus Date' date={@props.state.date} />
          <AddToCal date={@props.state.date} state={@props.state} />
          <Reminder {...@props} />
        </Sticky>
      </div>
    </section>
