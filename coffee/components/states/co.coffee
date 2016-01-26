React   = require('react')
Generic = require('components/states/generic')
entity  = require('utils/entity')

module.exports = React.createClass
  displayName: 'Colorado'

  render: ->
    <div className='state-info'>
      <p>
        Colorado has closed caucuses {entity('mdash')} Coloradans must register as a Democrat to vote for Bernie!
      </p>
      <p className='center'>
        <a className='big' href={'https://www.sos.state.co.us/voter-classic/pages/pub/olvr/verifyNewVoter.xhtml'}>Register as a Democrat</a>
        <a className='big' href={'https://www.sos.state.co.us/voter-classic/pages/pub/olvr/findVoterReg.xhtml'}>Check your registration status</a>
      </p>
      <p>
        Colorado has Same-Day Registration which allows you to register to vote at the caucuses on Tue, March 1 if you are not previously registered.
      </p>
      <Generic state='Colorado' office={@props.state.office} />
    </div>
