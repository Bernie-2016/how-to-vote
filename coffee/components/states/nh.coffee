import React      from 'react'
import CommonInfo from 'components/states/partials/commonInfo'
import Dates      from 'components/states/partials/dates'
import entity     from 'utils/entity'

module.exports = React.createClass
  displayName: 'New Hampshire'

  render: ->
    <div>
      <Dates state={@props.state} />
      <div className='state-info'>
        <p>New Hampshire has semi-closed primaries {entity('mdash')} New Hampshirites must register as democrat or undeclared to vote for Bernie! However, new and undeclared voters are able to register and change party at election ballots.
        </p>
        <p className='center'>
          <a className='big' href={'http://sos.nh.gov/nhsos_content.aspx?id=26190'}>Register as a Democrat or Undeclared</a>
          <a className='big' href={'http://sos.nh.gov/VoteInforLook.aspx'}>Check your registration status</a>
        </p>
        <p>
          In New Hampshire, if you have previously registered to vote, you must have been affiliated as a Democrat by October 30, 2015.
        </p>
        <p>
          New Hampshire has Same-Day Registration which allows you to register to vote at the primaries on Tue, February 9 if you are not currently registered to vote or are not affiliated with a party
        </p>
        <CommonInfo state='New Hampshire' office={@props.state.office} />
      </div>
    </div>
