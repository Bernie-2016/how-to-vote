import React     from 'react'
import Sticky    from 'react-stickynode'
import moment    from 'moment'
import RightInfo from 'components/states/partials/rightInfo'
import Reminder  from 'components/states/partials/reminder'

module.exports = React.createClass
  displayName: 'State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>Key Information</h2>
        <h3 className='caps'>Only 17?</h3>
        <p>
          You may still vote in {@props.state.name} if you will be 18 years old by November 8, 2016.
        </p>

        <Reminder state={@props.state} />

        <h3 className='caps'>College Students</h3>
        <p>
          In Minnesota, you must actively live in the precinct where you caucus.
        </p>
        <h3 className='caps'>More Information</h3>
        <p>
          If you have any questions about voting in {@props.state.name} you may contact your official elections office.
        </p>
        <p>
          <a href={@props.state.office.url} target='_blank'>Official {@props.state.name} Elections Website</a><br />
          Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
        </p>
      </div>
      <div className='right'>
        <RightInfo state={@props.state} />
      </div>
    </section>
