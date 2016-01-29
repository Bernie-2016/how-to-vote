React      = require('react')
CommonInfo = require('components/states/partials/commonInfo')
Dates      = require('components/states/partials/dates')
entity     = require('utils/entity')

module.exports = React.createClass
  displayName: 'Virginia'

  render: ->
    <div>
      <Dates state={@props.state} />
      <div className='state-info'>
        <p>
          Virginia has open primaries {entity('mdash')} Virginians can vote for Bernie Sanders regardless of their registered party.
        </p>
        <p className='center'>
          <a className='big' href={'https://vote.elections.virginia.gov/Registration/Eligibility'}>Register to Vote</a>
          <a className='big' href={'https://vote.elections.virginia.gov/VoterInformation'}>Check your registration status</a>
        </p>
        <p>
          You must be registered to vote by Mon, February 8 in Virginia.
        </p>
        <CommonInfo state='Virginia' office={@props.state.office} />
      </div>
    </div>
