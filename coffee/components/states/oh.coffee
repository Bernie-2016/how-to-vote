import React     from 'react'
import College   from 'components/blocks/college'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'OH State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Ohio has semi-open primaries {entity('mdash')} any Ohioan can vote for Bernie Sanders.
        </p>
        <Deadline {...@props} />
        <p>
          You must request a Democratic primary ballot at the polling place or in your absentee ballot application. If you voted via Republican ballot in the last general election, the poll worker will automatically give you a Republican ballot, unless you request a Democratic ballot. Make sure you have your desired party ballot before you head to the voting machine.
        </p>
        <h3 className='caps'>Early/Absentee Voting</h3>
        <p>
          Ohioans can vote before the March 15 primary, either in person or by mail-in absentee ballot, beginning February 17, 2016.  Check with your <a href='http://www.sos.state.oh.us/sos/elections/electionsofficials/boeDirectory.aspx' target='_blank'>local elections board</a> to learn more about early in-person voting times and locations. Click <a href='http://www.sos.state.oh.us/SOS/elections/Voters/votingAbsenteeByMail.aspx' target='_blank'>here</a> to request a mail-in absentee ballot.
        </p>
        <h3 className='caps'>Only 17?</h3>
        <p>
          If you will be 18 years old by November 8, 2016, stay tuned. Ohio Secretary of State Jon Husted is trying to change the rules to prevent 17-year-olds who will be 18 by the general election from voting, but Bernie 2016 has filed a lawsuit to protect the voting rights of young people in Ohio. You can read more about it <a href='https://berniesanders.com/sanders-sues-in-ohio-to-protect-young-and-minority-voters/' target='_blank'>here</a>.
        </p>
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
