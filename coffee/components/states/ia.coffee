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
  displayName: 'IA State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Iowa has semi-open caucuses {entity('mdash')} Iowans registered as a Republican cannot vote for Bernie Sanders! However, Iowans may change party affiliation on caucus day.
        </p>
        <p>
          Iowa has Same-Day Registration which allows you to register to vote at the caucuses on Mon, February 1.
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
