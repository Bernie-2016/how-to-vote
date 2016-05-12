React     = require('react')
College   = require('components/blocks/college')
Deadline  = require('components/blocks/deadline')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
Right     = require('components/blocks/right')
Young     = require('components/blocks/young')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

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
        <p>
          If you experience issues voting or witness irregularities at the polls, you can call the Bernie 2016 Kentucky hotline at <a href='tel:+15022422090'>(502) 242-2090</a>.
        </p>
        <h3 className='caps'>Absentee Voting</h3>
        <p>
          You can vote absentee in person in Kentucky until May 16 at your county clerk's office. Click <a href='http://elect.ky.gov/CONTACTCOUNTYCLERKS/Pages/default.aspx' target='_blank'>here</a> to find your county clerk's office and voting hours. You must meet one or more of the following criteria:
        </p>
        <ul>
          <li>You will be out of the county on election day</li>
          <li>You are Military, their Dependents, or an Overseas Citizen (For more information, please review the Military and Overseas Page found on this web site.)</li>
          <li>You are Military personnel confined to base and learn of your confinement within seven days or less of an election</li>
          <li>You are a Student or resident who temporarily reside outside of the county</li>
          <li>You are a voter or the spouse of a voter who has surgery scheduled that will require hospitalization on Election Day</li>
          <li>You are a pregnant woman in your third trimester</li>
          <li>You are serving as one of the following: Precinct election officer appointed to serve in precinct other than their own; Alternate precinct officer; County Board of Elections’ member; County Board of Elections’ staff; Deputy county clerk; State Board of Elections’ staff</li>
        </ul>
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
