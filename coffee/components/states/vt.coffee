import React      from 'react'
import TopInfo    from 'components/states/partials/topInfo'
import CommonInfo from 'components/states/partials/commonInfo'
import RightInfo  from 'components/states/partials/rightInfo'

module.exports = React.createClass
  displayName: 'VT State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <TopInfo state={@props.state} />

        <h3 className='caps'>Early Voting</h3>
        <p>
          You can participate in early in-person voting for the Vermont democratic primary at your town clerk's office any time until Monday, February 29. Any voter can also request that their town clerk mail them an early voter absentee ballot any time before the primary. You can find the form to request an absentee ballot <a href='https://www.sec.state.vt.us/media/53483/VTAbsenteeRequestGeneric.pdf'>here</a>.  
        </p>

        <CommonInfo state={@props.state} />
      </div>
      <div className='right'>
        <RightInfo state={@props.state} />
      </div>
    </section>
