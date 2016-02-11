import React      from 'react'
import TopInfo    from 'components/states/partials/topInfo'
import CommonInfo from 'components/states/partials/commonInfo'
import RightInfo  from 'components/states/partials/rightInfo'

module.exports = React.createClass
  displayName: 'GA State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <TopInfo state={@props.state} />

        <h3 className='caps'>Advance Voting</h3>
        <p>
          Advanced voting for the Georgia democratic primary takes place between February 8 and February 26, during normal business hours, and on Saturday February 20, from 9:00 A.M. to 4:00 P.M. Georgia also lets any voter vote by absentee ballot. You can apply for an absentee ballot <a href='http://sos.ga.gov/admin/uploads/absentee_ballot_app_201431.pdf'>here</a>.
        </p>

        <h3 className='caps'>ID Requirement</h3>
        <p>
          Georgia requires you to present a photo identification in order to vote in person. Acceptable IDs include valid state or federal photo IDs, including a free photo ID card issued by your county registrar's office or the Georgia Department of Driver Services, a Georgia Driver's License (current or expired), employee photo IDs from any federal, state, or local agency, a valid U.S. passport, a valid U.S. military photo ID, or a valid tribal photo ID.
        </p>
        <CommonInfo state={@props.state} />
      </div>
      <div className='right'>
        <RightInfo state={@props.state} />
      </div>
    </section>
