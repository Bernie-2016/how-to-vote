React      = require('react')
CommonInfo = require('components/states/partials/commonInfo')
Dates      = require('components/states/partials/dates')
entity     = require('utils/entity')

module.exports = React.createClass
  displayName: 'Iowa'

  render: ->
    <div>
      <Dates state={@props.state} />
      <div className='state-info'>
        <p>
          Iowa has semi-open caucuses {entity('mdash')} Iowans registered as a Republican cannot vote for Bernie Sanders! However, Iowans may change party affiliation on caucus day.
        </p>
        <p className='center'>
          <a className='big' href={'https://mymvd.iowadot.gov/VoterRegistration'}>Register as a Democrat or Undeclared</a>
          <a className='big' href={'https://sos.iowa.gov/elections/voterreg/regtovote/search.aspx'}>Check your registration status</a>
        </p>
        <p>
          Iowa has Same-Day Registration which allows you to register to vote at the caucuses on Mon, February 1.
        </p>
        <CommonInfo state='Iowa' office={@props.state.office} />
      </div>
    </div>
