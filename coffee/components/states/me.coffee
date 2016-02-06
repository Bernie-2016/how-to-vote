import React      from 'react'
import CommonInfo from 'components/states/partials/commonInfo'
import Dates      from 'components/states/partials/dates'
import entity     from 'utils/entity'

module.exports = React.createClass
  displayName: 'Maine'

  render: ->
    <div>
      <Dates state={@props.state} />
      <div className='state-info'>
        <p>
          Maine has closed caucuses {entity('mdash')} Mainers must register as a Democrat to vote for Bernie!
        </p>
        <p className='center'>
          <a className='big' href={'http://www.maine.gov/sos/cec/elec/voter-info/voterguide.html'}>Register as a Democrat</a>
          <a className='big' href={'http://www.maine.gov/portal/government/edemocracy/voter_lookup.php'}>Check your registration status</a>
        </p>
        <p>
          Maine has Same-Day Registration which allows you to register to vote at the caucuses on Sun, March 6 for unregistered and unaffiliated voters.
        </p>
        <CommonInfo state='Maine' office={@props.state.office} />
      </div>
    </div>
