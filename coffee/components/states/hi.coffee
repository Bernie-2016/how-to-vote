import React           from 'react'
import Sticky          from 'react-stickynode'
import moment          from 'moment'
import Button          from 'components/blocks/button'
import DateBox         from 'components/blocks/dateBox'
import Young           from 'components/blocks/young'
import AddToCal        from 'components/widgets/addToCalWidget'
import Offices         from 'components/widgets/officesWidget'
import PollPlace       from 'components/widgets/pollPlaceWidget'
import Reminder        from 'components/widgets/reminderWidget'
import Share           from 'components/widgets/shareWidget'
import { primaryType } from 'states'
import entity          from 'utils/entity'

module.exports = React.createClass
  displayName: 'HI State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Hawaii has closed caucuses {entity('mdash')} Hawaii residents must join the Democratic Party to vote for Bernie! However, Hawaii residents may join the Party on the day of the caucus.
        </p>
        <p>
          The rules of the Democratic Party of Hawaii allow you to register to vote at the caucuses on Sat, March 26.
        </p>
        <Young {...@props} />
        <h3 className='caps'>College Students</h3>
        <p>
          A college student must be a legal resident of Hawaii in order to be able to caucus for Bernie in Hawaii.
        </p>
        <h3 className='caps'>More Information</h3>
        <p>
         If you have any questions about voting in the Hawaii Democratic caucus you can contact the Democratic Party of Hawaii for more information.
        </p>
        <p>
          <a href={@props.state.office.url} target='_blank'>Democratic Party of Hawaii</a><br />
          Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
        </p>
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <DateBox title={"#{primaryType(@props.state.fillKey, @props.state.label)} Date"} date={@props.state.date} />
          <AddToCal date={@props.state.date} state={@props.state} />
          <DateBox title='Registration Deadline' date={@props.state.regDate} />
          <AddToCal date={@props.state.regDate} state={@props.state} addendum={' Registration Deadline'} />
          <Reminder {...@props} />
          <hr className='right-divider' />

          <Button title='Register to Vote' link='http://elections.hawaii.gov/frequently-asked-questions/online-voter-registration/' classes={'blue' unless moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days')} />
          <Button title='Check Registration Status' link='https://olvr.hawaii.gov/' />
        </Sticky>
      </div>
    </section>
