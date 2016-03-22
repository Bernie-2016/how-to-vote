import React     from 'react'
import Sticky    from 'react-stickynode'
import Button    from 'components/blocks/button'
import College   from 'components/blocks/college'
import DateBox   from 'components/blocks/dateBox'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import AddToCal  from 'components/widgets/addToCalWidget'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Reminder  from 'components/widgets/reminderWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'
import moment    from 'moment'

module.exports = React.createClass
  displayName: 'AK State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Alaska has closed caucuses {entity('mdash')} Alaskans must register as a Democrat to vote for Bernie! However, Alaskans may update their party affiliation to Democrat on the day of the caucus.
        </p>
        <Deadline {...@props} />
        <p>
          You can look up your caucus location <a href='http://www.alaskademocrats.org/caucus-locations/' target='_blank'>here</a>.
        </p>
        <h3 className='caps'>Only 17?</h3>
        <p>
          You may still caucus in Alaska if you will be 18 years old by June 24, 2016.
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
          <DateBox title='Registration Deadline' date={@props.state.regDate} />
          <AddToCal date={@props.state.regDate} state={@props.state} addendum={' Registration Deadline'} />
          <Reminder {...@props} />

          <hr className='right-divider' />
          <Button title='Register to Vote' link={@props.state.regLink} classes={'blue' unless moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days')} />
          <Button title='Check Registration Status' link={@props.state.chkLink} />
          <Button title='Commit to Caucus' link='https://go.berniesanders.com/page/s/commit-alaska' />
        </Sticky>
      </div>
    </section>
