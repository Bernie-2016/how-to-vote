React   = require('react')
Generic = require('components/states/generic')
entity  = require('utils/entity')

module.exports = React.createClass
  displayName: 'Alabama'

  render: ->
    <div className='state-info'>
      <p>
        Alabama has open primaries {entity('mdash')} Alabamians can vote for Bernie Sanders regardless of their registered party.
      </p>
      <p className='center'>
        <a className='big' href={'https://www.alabamavotes.gov/olvr/default.aspx'}>Register to Vote</a>
        <a className='big' href={'https://myinfo.alabamavotes.gov/VoterView/RegistrantSearch.do'}>Check your registration status</a>
      </p>
      <p>
        You must be registered to vote by Mon, February 15 in Alabama.
      </p>
      <Generic state='Alabama' office={@props.state.office} />
    </div>
