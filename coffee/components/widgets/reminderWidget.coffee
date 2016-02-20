import React       from 'react'
import MaskedInput from 'react-maskedinput'
import $           from 'jquery'
import entity      from 'utils/entity'

module.exports = React.createClass
  displayName: 'Reminder Widget'

  getInitialState: ->
    {
      open: false
      done: false
      alerts: false
      email: ''
      phone: ''
    }

  open: (e) ->
    e.preventDefault()
    @setState(open: true)

  submit: (e) ->
    e.preventDefault()
    if @state.email is '' && (@state.phone is '' || !@state.alerts)
      alert 'Please enter either your email address or enter your phone number and check the box to receive alerts.'
      return
    phone = @state.phone.replace(/\D/g, '')
    data =
      email: @state.email
      phone: phone
      state_cd: @props.stateKey
      'custom-7456': if phone is '' || !@state.alerts then 0 else 1
    $.post 'https://go.berniesanders.com/page/sapi/state-voting-site-signup', data, (r) =>
      if r.status isnt 'success'
        alert 'Submission error; please double-check and try again.'
      else
        @setState(done: true)

  componentDidUpdate: (prevProps) ->
    @setState(@getInitialState()) unless @props.stateKey is prevProps.stateKey

  render: ->
    <div className='reminder-widget'>
      {if @state.done
        <div>
          <strong>Thanks!</strong>
          <p>
            Successfully signed up for reminders.
          </p>
        </div>
      else if @state.open
        <div>
          <input type='email' name='email' placeholder='Email Address' onChange={ (e) => @setState(email: e.target.value) } />
          <MaskedInput mask='(111) 111-1111' type='text' name='phone' placeholder='Phone Number' onChange={ (e) => @setState(phone: e.target.value) } />
          <input type='checkbox' name='alerts' onChange={ (e) => @setState(alerts: e.target.checked) } />Sign up for mobile alerts from Bernie 2016
          <br />
          <p className='disclaimer'>
            Mobile alerts from Bernie 2016. Periodic messages. Msg {entity('amp')} data rates may apply. <strong>Text STOP to 82623 to stop receiving messages. Text HELP to 82623 for more information.</strong> 
            {entity('nbsp')}<a href='https://sync.revmsg.net/terms-and-conditions/4c4b9892-f8fc-4801-b7ea-710fa9225ad4' target='_blank'>
              Terms {entity('amp')} Conditions
            </a>
          </p>
          <a href='#' className='btn red' onClick={@submit}>
            Sign Up
          </a>
        </div>
      else
        <a href='#' className='btn red' onClick={@open}>
          Sign Up for Reminders
        </a>
      }
    </div>
