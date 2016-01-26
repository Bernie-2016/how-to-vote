React   = require('react')
Generic = require('components/states/generic')
entity  = require('utils/entity')

module.exports = React.createClass
  displayName: 'New Hampshire'

  render: ->
    <div className='state-info'>
      <p>
        South Carolina has open primaries {entity('mdash')} South Carolinians can vote for Bernie Sanders regardless of their registered party.
      </p>
      <p className='center'>
        <a className='big' href={'https://info.scvotes.sc.gov/eng/ovr/start.aspx'}>Register to Vote</a>
        <a className='big' href={'https://info.scvotes.sc.gov/eng/voterinquiry/VoterInformationRequest.aspx?PageMode=VoterInfo'}>Check your registration status</a>
      </p>
      <p>
        You must be registered to vote by Wed, January 27 in South Carolina.
      </p>
      <Generic state='South Carolina' office={@props.state.office} />
    </div>
