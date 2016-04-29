import React     from 'react'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'GU State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Guam has closed caucuses {entity('mdash')} Guamanians must register with the Democratic party to caucus for Bernie!
        </p>
        <p>
          There is no deadline to register to vote. Voters who wish to participate may register and declare affiliation with the Democratic Party at the caucus on May 7th. You should bring a valid Guam ID, Guam drivers license, or US passport to register.
        </p>
        <p>
          There is one Democratic caucus location for Guam:<br />
          Agana Shopping Center<br />
          302 Route 4 STE 100, 96910 Hagatna<br />
          2nd Floor<br />
          10AM-8PM
        </p>
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
