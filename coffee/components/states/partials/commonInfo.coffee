import React from 'react'

module.exports = React.createClass
  displayName: 'CommonInfo'

  render: ->
    <div>
      <p>
        <strong>Only 17?</strong>
      </p>
      <p>
        You may still vote in {@props.state} if you will be 18 years old by November 8, 2016.
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
        If you have any questions about voting in {@props.state} you may contact your official elections office.
      </p>
      <p>
        <a href={@props.office.url}>Official {@props.state} Elections Website</a><br />
        Phone: <a href={"tel:+1#{@props.office.phone.replace(/\D/g,'')}"}>{@props.office.phone}</a>
      </p>
    </div>
