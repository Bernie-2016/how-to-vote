import React      from 'react'
import TopInfo    from 'components/states/partials/topInfo'
import CommonInfo from 'components/states/partials/commonInfo'
import RightInfo  from 'components/states/partials/rightInfo'

module.exports = React.createClass
  displayName: 'OK State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <TopInfo state={@props.state} />

        <h3 className='caps'>Early Voting</h3>
        <p>
          Early voting for the Oklahoma Democratic primary takes place on Thursday, February 25 and Friday, February 26, from 8 A.M. to 6 P.M., and on Saturday, February 27, from 9 A.M. to 2 P.M.  Oklahoma also lets all residents vote by absentee ballot. You can apply for an absentee ballot <a href='https://www.ok.gov/elections/documents/Oklahoma%20Absentee%20Ballot%20Application%20-%20fillable.pdf'>here</a> until February 24, 2016.
        </p>

        <h3 className='caps'>ID Requirement</h3>
        <p>
          Oklahoma requires you to present a photo identification in order to vote in person. Acceptable IDs must be issued by the U.S. government, the State of Oklahoma, or a federally recognized tribal government, must contain your name and photograph, and must be valid (i.e., unexpired) on the date of the primary.
        </p>
        <CommonInfo state={@props.state} />
      </div>
      <div className='right'>
        <RightInfo state={@props.state} />
      </div>
    </section>
