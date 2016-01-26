React   = require('react')
Generic = require('components/states/generic')
entity  = require('utils/entity')

module.exports = React.createClass
  displayName: 'Arizona'

  render: ->
    <div className='state-info'>
      <p>
        Arizona has closed primaries {entity('mdash')} Arizonans must register as a Democrat to vote for Bernie!
      </p>
      <p className='center'>
        <a className='big' href={'http://servicearizona.com/voterRegistration'}>Register as a Democrat</a>
        <a className='big' href={'https://voter.azsos.gov/VoterView/RegistrantSearch.do'}>Check your registration status</a>
      </p>
      <p>
        You must be registered as a Democrat by Mon, February 22 in Arizona.
      </p>
      <Generic state='Arizona' office={@props.state.office} />
    </div>
