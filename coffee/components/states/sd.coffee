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
ShareBar  = require('components/blocks/shareBar')

module.exports = React.createClass
  displayName: 'SD State Info'

  render: ->
    <section className='flex'>
  		<StateInfo {...@props} />
  		<ShareBar {...@props} />

      <div className='left'>
        <PollPlace state={@props.state} />

        <div className='info'>
          <div id='key-info' className='key-info section expanded'>
            <div className='section-header'>
              <h3 className='caps'>
                Key Information
              </h3>
            </div>

            <div className='section-body'>
              <p>
                South Dakota has semi-closed primaries {entity('mdash')} South Dakotans must be registered as a Democrat or independent to vote for Bernie Sanders!
              </p>
              <Deadline {...@props} />
            </div>
          </div>

          <div className='section'>
            <div className='section-header'>
              <h3 className='caps'>ID Requirement</h3>
            </div>

            <div className='section-body'>
              <p>
                South Dakota asks that you present a photo identification in order to vote in person, but South Dakotans with no photo ID can still cast a regular ballot by signing a personal identification affidavit on election day.
              </p>
            </div>
          </div>

          <div className='section'>
            <div className='section-header'>
              <h3 className='caps'>Absentee Voting</h3>
            </div>

            <div className='section-body'>
              <p>
                If you can't make it to the polls on primary day, you can submit an absentee ballot by <a href='https://sdsos.gov/elections-voting/voting/absentee-voting.aspx' target='_blank'>mail</a>, or or you can request and submit an absentee ballot in person at your county auditor's <a href='https://sdsos.gov/contact-us/county-auditors.aspx' target='_blank'>office</a> beginning on April 22, 2016.
              </p>
            </div>
          </div>

          <College {...@props} />
          <Military {...@props} />
          <MoreInfo {...@props} />
          <Offices {...@props} />
        </div>
      </div>
      <div className='right'>
      </div>
    </section>
