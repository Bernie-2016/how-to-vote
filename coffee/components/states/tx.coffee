import React      from 'react'
import CommonInfo from 'components/states/partials/commonInfo'
import Dates      from 'components/states/partials/dates'
import entity     from 'utils/entity'

module.exports = React.createClass
  displayName: 'Texas'

  render: ->
    <div>
      <Dates state={@props.state} />
      <div className='state-info'>
        <p>
          Texas has open primaries {entity('mdash')} Texans can vote for Bernie Sanders regardless of their registered party.
        </p>
        <p className='center'>
          <a className='big' href={'http://www.votetexas.gov/register-to-vote/register-to-vote/'}>Register to Vote</a>
          <a className='big' href={'https://teamrv-mvp.sos.texas.gov/MVP/languageChange.do?'}>Check your registration status</a>
        </p>
        <p>
          You must be registered to vote by Mon, February 1 in Texas.
        </p>
        <CommonInfo state='Texas' office={@props.state.office} />
      </div>
    </div>
