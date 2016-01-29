React      = require('react')
CommonInfo = require('components/states/partials/commonInfo')
Dates      = require('components/states/partials/dates')
entity     = require('utils/entity')

module.exports = React.createClass
  displayName: 'Nevada'

  render: ->
    <div>
      <Dates state={@props.state} />
      <div className='state-info'>
        <p>Nevada has closed caucuses {entity('mdash')} Nevadans must register as a Democrat to vote for Bernie! However Nevadans may register/update registration to Democrat on the day of the caucus.</p>
        <p className='center'>
          <a className='big' href={'https://nvsos.gov/sosvoterservices/Registration/step1.aspx'}>Register as a Democrat</a>
          <a className='big' href={'https://nvsos.gov/votersearch/'}>Check your registration status</a>
        </p>
        <CommonInfo state='Nevada' office={@props.state.office} />
      </div>
    </div>
