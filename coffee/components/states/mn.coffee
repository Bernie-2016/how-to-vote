import React      from 'react'
import CommonInfo from 'components/states/partials/commonInfo'
import Dates      from 'components/states/partials/dates'
import entity     from 'utils/entity'

module.exports = React.createClass
  displayName: 'Minnesota'

  render: ->
    <div>
      <Dates state={@props.state} />
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
        <CommonInfo state='Minnesota' office={@props.state.office} />
      </div>
    </div>
