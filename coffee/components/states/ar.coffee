React      = require('react')
CommonInfo = require('components/states/partials/commonInfo')
Dates      = require('components/states/partials/dates')
entity     = require('utils/entity')

module.exports = React.createClass
  displayName: 'Arkansas'

  render: ->
    <div>
      <Dates state={@props.state} />
      <div className='state-info'>
        <p>
          Arkansas has open primaries {entity('mdash')} Arkansans can vote for Bernie Sanders regardless of their registered party.
        </p>
        <p className='center'>
          <a className='big' href={'http://www.sos.arkansas.gov/elections/pages/voterregistration.aspx'}>Register to Vote</a>
          <a className='big' href={'https://www.voterview.ar-nova.org/VoterView/RegistrantSearch.do'}>Check your registration status</a>
        </p>
        <p>
          You must be registered to vote by Mon, February 1 in Arkansas.
        </p>
        <CommonInfo state='Arkansas' office={@props.state.office} />
      </div>
    </div>
