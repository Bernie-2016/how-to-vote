import React     from 'react'
import Sticky    from 'react-stickynode'
import Button    from 'components/blocks/button'
import College   from 'components/blocks/college'
import DateBox   from 'components/blocks/dateBox'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import AddToCal  from 'components/widgets/addToCalWidget'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Reminder  from 'components/widgets/reminderWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'ND State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          North Dakota has open caucuses {entity('mdash')} any North Dakotan that intends to support the Democratic Party in the 2016 election can vote for Bernie Sanders, regardless of registration status.
        </p>
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <DateBox title='Caucus Date' date={@props.state.date} />
          <AddToCal date={@props.state.date} state={@props.state} />
          <Reminder {...@props} />

          <hr className='right-divider' />
          <Button title='More Information' link={'http://demnpl.com/'} classes='blue' />
        </Sticky>
      </div>
    </section>
