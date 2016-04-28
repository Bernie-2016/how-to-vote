import React     from 'react'
import College   from 'components/blocks/college'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Young     from 'components/blocks/young'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'KY State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Kentucky has closed primaries {entity('mdash')} Kentuckians must register as a Democrat to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <p>
          If you are registered as a Republican or unaffiliated, the deadline to change your party affiliation has already passed. If you are not yet registered to vote, you may still register up until the deadline.
        </p>
        <h3 className='caps'>Early/Absentee Voting</h3>
        <p>
          You can early vote in Kentucky until May 16 at your county clerk's office. Click <a href='http://elect.ky.gov/CONTACTCOUNTYCLERKS/Pages/default.aspx' target='_blank'>here</a> to find your county clerk's office and voting hours. You can also vote absentee in Kentucky if you meet certain criteria; click <a href='http://elect.ky.gov/voterinfo/pages/absenteevoterinformation.aspx' target='_blank'>here</a> for more information.
        </p>
        <Young {...@props} />
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
