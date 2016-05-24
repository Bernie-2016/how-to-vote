React     = require('react')
College   = require('components/blocks/college')
Deadline  = require('components/blocks/deadline')
Military  = require('components/blocks/military')
MoreInfo  = require('components/blocks/moreInfo')
StateInfo = require('components/blocks/stateInfo')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

module.exports = React.createClass
  displayName: 'OR State Info'

  render: ->
    <section className='flex'>
  		<StateInfo {...@props} />

      <div className='left'>
        <div className='info'>
          <h2>
            Key Information
            <Share {...@props} />
          </h2>
          <PollPlace state={@props.state} title='Ballot Drop Box' />
          <p>
            Oregon has closed primaries {entity('mdash')} Oregonians must register as a Democrat to vote for Bernie!
          </p>
          <Deadline {...@props} />
          <h3 className='caps'>How to Vote for Bernie in Oregon by May 17</h3>
          <ol>
            <li>
              Check your mail daily for your ballot.
            </li>
            <li>
              If you recently changed your registration to Democratic Party, check your ballot to make sure it says "Official Primary Nominating Ballot for the Democratic Primary." If it does not, call your county county elections office to request the Democratic Primary ballot.
            </li>
            <li>
              If you don't receive your ballot, call your county elections offices <a href='http://sos.oregon.gov/elections/Pages/countyofficials.aspx' target='_blank'>listed here</a>. You have the ability to reactivate your voting status and update your address. Please do this sooner rather than later.
            </li>
            <li>
              Once you receive your ballot, vote for Bernie. <a href='http://sos.oregon.gov/voting/Pages/ballot-help.aspx' target='_blank'>Click here if you need more information on filling out your ballot</a>. It's important that your signature matches the one on your voter registration form.
            </li>
            <li>
              You can mail your ballot by May 11, or you can drop it off at a <a href='http://sos.oregon.gov/voting/Pages/drop-box-locator.aspx' target='_blank'>secure drop box</a> or <a href='http://sos.oregon.gov/elections/Pages/countyofficials.aspx' target='_blank'>your county elections office</a> by 8PM on May 17.
            </li>
            <li>
              Track your ballot. <a href='https://secure.sos.state.or.us/orestar/vr/showVoterSearch.do?lang=eng&source=SOS' target='_blank'>You can click here to log on to track your ballot</a>. If you are unsure your ballot was received or counted, call your local county office. You can fix any issues immediately to prevent having to rush to fix a problem after the primary.
            </li>
          </ol>

          <h3 className='caps'>Absentee Voting</h3>
          <p>
            If you will be away from your home address during the election season, you can request an absentee ballot using the form <a href='http://sos.oregon.gov/elections/Documents/SEL111.pdf' target='_blank'>here</a>. The last day to request an absentee ballot is Thu, May 12; the last day to return an absentee ballot is Tue, May 17.
          </p>
          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
      </div>
    </section>
