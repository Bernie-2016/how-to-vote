React = require('react')

module.exports = React.createClass
  displayName: 'Nevada'

  render: ->
    <div className='state-info'>
      <p>Nevada has closed caucuses &mdash; Nevadans must register as a Democrat to vote for Bernie! However Nevadans may register/update registration to Democrat on the day of the caucus.</p>
      <p className='center'>
        <a className='big' href={'https://nvsos.gov/sosvoterservices/Registration/step1.aspx'}>Register as a Democrat</a>
        <a className='big' href={'https://nvsos.gov/votersearch/'}>Check your registration status</a>
      </p>
      <p>
        Nevada has Same-Day Registration which allows you to register to vote at the caucuses on Sat, February 20.
      </p>
      <p>
        <strong>Only 17?</strong>
      </p>
      <p>
        You may still vote in Nevada's caucuses if you will be 18 years old by November 8, 2016.
      </p>
      <p>
        <strong>College Students</strong>
      </p>
      <p>
        If you are a college student not living in your home state, you can vote for Bernie in either your home state or in the state in which you are attending school!
      </p>
      <p>
        <strong>Military/Overseas Voters</strong>
      </p>
      <p>
        If you are a Military Voter or a United States citizen living abroad, you are able to <a href='https://www.overseasvotefoundation.org/vote/VoterInformation.htm'>complete a ballot here</a>.
      </p>
      <p>
        <strong>More Information</strong>
      </p>
      <p>
        If you have any questions about voting in Nevada you may contact your official elections office.
      </p>
      <p>
        Official Nevada Elections Website<br />
        Phone: (775) 684-5705
      </p>
    </div>