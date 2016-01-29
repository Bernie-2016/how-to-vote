React      = require('react')
CommonInfo = require('components/states/partials/commonInfo')
Dates      = require('components/states/partials/dates')
entity     = require('utils/entity')

module.exports = React.createClass
  displayName: 'Massachusetts'

  render: ->
    <div>
      <Dates state={@props.state} />
      <div className='state-info'>
        <p>
          Massachusetts has semi-closed primaries {entity('mdash')} Bay Staters must register as a Democrat or undeclared to vote for Bernie!
        </p>
        <p className='center'>
          <a className='big' href={'https://www.sec.state.ma.us/OVR/'}>Register as a Democrat or Undeclared</a>
          <a className='big' href={'http://www.sec.state.ma.us/VoterRegistrationSearch/MyVoterRegStatus.aspx'}>Check your registration status</a>
        </p>
        <p>
          You must be registered to vote by Wed, February 10 in Massachusetts.
        </p>
        <CommonInfo state='Massachusetts' office={@props.state.office} />
      </div>
    </div>
