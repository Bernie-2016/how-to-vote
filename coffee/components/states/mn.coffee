import React           from 'react'
import Sticky          from 'react-stickynode'
import Button          from 'components/blocks/button'
import DateBox         from 'components/blocks/dateBox'
import Young           from 'components/blocks/young'
import AddToCal        from 'components/widgets/addToCalWidget'
import Offices         from 'components/widgets/officesWidget'
import PollPlace       from 'components/widgets/pollPlaceWidget'
import Reminder        from 'components/widgets/reminderWidget'
import Share           from 'components/widgets/shareWidget'
import { primaryType } from 'states'
import moment          from 'moment'

module.exports = React.createClass
  displayName: 'State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} placeholder='Enter your local address' />
        <h3 className='caps'>Can I Caucus?</h3>
        <p>
          You can caucus if you live in Minnesota and will be eligible to vote on November 8, 2016. That's it!
        </p>
        <p>
          You do NOT need to be registered to vote.
        </p>
        <p>
          You do NOT need to bring an ID.
        </p>
        <p>
          Registration starts at 6:30PM. If you're in line by 8, you will receive a ballot.
        </p>
        <h3 className='caps'>College Students</h3>
        <p>
          If you are from out of state but go school in Minnesota, you can and should caucus! Just look up the caucus location for your Minnesota address.
        </p>
        <h3 className='caps'>More Information</h3>
        <p>
          For more information you can contact the Bernie campaign office at (651) 330-0560 or the Minnesota DFL party:
        </p>
        <p>
          <a href={@props.state.office.url} target='_blank'>DFL Website</a><br />
          Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
        </p>
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <DateBox title={"#{primaryType(@props.state.fillKey, @props.state.label)} Date"} date={@props.state.date} />
          <AddToCal date={@props.state.date} state={@props.state} />
          <Reminder {...@props} />

          <hr className='right-divider' />
          <Button title='More Info' link='https://www.dfl.org/' classes='blue' />
        </Sticky>
      </div>
    </section>
