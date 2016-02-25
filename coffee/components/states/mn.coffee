import React     from 'react'
import Sticky    from 'react-stickynode'
import moment    from 'moment'
import RightInfo from 'components/partials/rightInfo'
import PollPlace from 'components/widgets/pollPlaceWidget'

module.exports = React.createClass
  displayName: 'State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>Key Information</h2>
        {if @props.state.pollWgt
          <PollPlace state={@props.state} placeholder='Enter your local address' />
        }
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
      </div>
      <div className='right'>
        <RightInfo state={@props.state} />
      </div>
    </section>
