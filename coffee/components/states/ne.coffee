import React     from 'react'
import College   from 'components/blocks/college'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Young     from 'components/blocks/young'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'NE State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Nebraska has closed caucuses {entity('mdash')} Nebraskans must be registered Democrats to vote for Bernie Sanders! However, unaffiliated Nebraskans or those registered as Republicans can register to vote or change their party affiliation prior to or at the caucus.
        </p>
        <p>
          Nebraska has Same-Day Registration which allows you to register to vote at the caucuses on Sat, March 5.
        </p>
        <p>
          Nebraska caucuses at different times depending on your precinct; find yours <a href='http://nebraskacaucus2016.org' target='_blank'>here</a>.
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
