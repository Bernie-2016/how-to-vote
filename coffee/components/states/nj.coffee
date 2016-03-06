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
  displayName: 'NJ State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          New Jersey has closed primaries {entity('mdash')} New Jerseyans must register as a Democrat to vote for Bernie! However, unaffiliated voters can declare their affiliation with the Democratic Party any time up to (and including) election day.
        </p>
        <Deadline {...@props} />
        <p>
          New Jerseyans registered with another political party must <a href='http://www.state.nj.us/state/elections/voting-information-party-declaration-forms.html' target='_blank'>change their affiliation</a> by April 13, 2016 in order to participate in the Democratic Party Primary.
        </p>
        <h3 className='caps'>Absentee Voting</h3>
        <p>
          If you can't make it to the polls on primary day, you can apply for a mail-in ballot until May 31, 2016. Find mail-in ballot applications for your county <a href='http://www.state.nj.us/state/elections/voting-information.html' target='_blank'>here</a>. If you don't apply for a mail-in ballot by the May 31 deadline, you can apply for (and submit) an absentee ballot in person at your local county clerk's <a href='http://www.state.nj.us/state/elections/voting-information-local-officials.html' target='_blank'>office</a> until June 6, 2016 at 3 P.M.
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
