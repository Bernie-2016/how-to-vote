import React      from 'react'
import CommonInfo from 'components/states/partials/commonInfo'
import Dates      from 'components/states/partials/dates'
import entity     from 'utils/entity'

module.exports = React.createClass
  displayName: 'Alabama'

  render: ->
    <div>
      <Dates state={@props.state} />
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
        <CommonInfo state='Alabama' office={@props.state.office} />
      </div>
    </div>
