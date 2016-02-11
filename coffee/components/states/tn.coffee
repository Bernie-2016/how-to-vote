import React      from 'react'
import TopInfo    from 'components/states/partials/topInfo'
import CommonInfo from 'components/states/partials/commonInfo'
import RightInfo  from 'components/states/partials/rightInfo'

module.exports = React.createClass
  displayName: 'TN State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <TopInfo state={@props.state} />

        <h3 className='caps'>Early Voting</h3>
        <p>
          You can participate in early in-person voting for the Tennessee democratic primary between February 10, 2016 and February 23, 2016, during voting hours established by your county.
        </p>

        <h3 className='caps'>ID Requirement</h3>
        <p>
          Tennessee requires you to present a photo identification in order to vote in person. Acceptable IDs include valid photo IDs issued by any state government, valid U.S. passports, valid U.S. military photo IDs, and Tennessee handgun carry permits with photos.
        </p>
        <CommonInfo state={@props.state} />
      </div>
      <div className='right'>
        <RightInfo state={@props.state} />
      </div>
    </section>
