React   = require('react')
Generic = require('components/states/generic')
entity  = require('utils/entity')

module.exports = React.createClass
  displayName: 'Minnesota'

  render: ->
    <div className='state-info'>
      <p>
        Minnesota has open caucuses {entity('mdash')} Minnesotans can vote for Bernie Sanders regardless of their registered party.
      </p>
      <p className='center'>
        <a className='big' href={'https://mnvotes.sos.state.mn.us/VoterRegistration/VoterRegistrationStep1.aspx'}>Register to Vote</a>
        <a className='big' href={'https://mnvotes.sos.state.mn.us/VoterStatus.aspx'}>Check your registration status</a>
      </p>
      <p>
        Minnesota has Same-Day Registration which allows you to register to vote at the caucuses on Tue, March 1.
      </p>
      <Generic state='Minnesota' office={@props.state.office} />
    </div>
