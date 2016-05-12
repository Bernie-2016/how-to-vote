React     = require('react')
MoreInfo  = require('components/blocks/moreInfo')
Right     = require('components/blocks/right')
Offices   = require('components/widgets/officesWidget')
PollPlace = require('components/widgets/pollPlaceWidget')
Share     = require('components/widgets/shareWidget')
entity    = require('utils/entity')

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
          There is one Democratic caucus location for Guam:<br />
          Agana Shopping Center<br />
          302 Route 4 STE 100, 96910 Hagatna<br />
          2nd Floor<br />
          10AM-8PM
        </p>
        <p>
          <a href='https://berniesanders.com/issues/standing-with-guam/' target='_blank'>Read Bernie’s comprehensive policy platform for Guam</a>
        </p>
        <h3 className='caps'>Who can vote</h3>
        <p>
          US citizens 18 and older. You must be a registered Democrat to vote for Bernie! You can register as Democrat the SAME DAY of the election, May 7th.
        </p>
        <h3 className='caps'>What to bring</h3>
        <p>
          A​ valid government issued ID such as a Guam driver's license or passport. If your driver's license is NOT from Guam, bring your license and a piece of mail like a bill or )bank statement with your name on it and a Guam address or PO Box.
        </p>
        <h3 className='caps'>Getting to the polls</h3>
        <p>
          Yes! There will be public transport available for people to get to the polling location, but the Democratic Party of Guam has not released those details yet.
        </p>
        <p>
          If you encounter someone who is interested in this option, you can send us their contact info <a href='http://bernie.to/guamfollowup' target='_blank'>here</a>. We can call them back when the announcements are made!
        </p>
        <h3 className='caps'>Voting day help</h3>
        <p>
          The Guam grassroots organizing team can be reached at: <a href='mailto:guam@berniesanders.com'>guam@berniesanders.com</a>. 
        </p>
        <p>
          Voting day Hotline: <br />
          (671) ­488­-2510
        </p>
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
