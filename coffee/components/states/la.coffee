import React      from 'react'
import TopInfo    from 'components/states/partials/topInfo'
import CommonInfo from 'components/states/partials/commonInfo'
import RightInfo  from 'components/states/partials/rightInfo'

module.exports = React.createClass
  displayName: 'LA State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <TopInfo state={@props.state} />

        <h3 className='caps'>Early Voting</h3>
        <p>
          You can participate in early voting for the Louisiana Democratic Primary at designated locations in your parish between February 20 and 27, 2016. Find your closest early voting location <a href='https://voterportal.sos.la.gov/EarlyVoting'>here</a>.
        </p>

        <CommonInfo state={@props.state} />
      </div>
      <div className='right'>
        <RightInfo state={@props.state} />
      </div>
    </section>
