import React           from 'react'
import { primaryType } from 'states'
import PollPlace       from 'components/widgets/pollPlaceWidget'

module.exports = React.createClass
  displayName: 'State Common Info'

  render: ->
    <div>
      {if @props.state.pollWgt
        <PollPlace />
      }
      <h3 className='caps'>College Students</h3>
      <p>
        If you are a college student not living in your home state, you can vote for Bernie in either your home state or in the state in which you are attending school!
      </p>
      <h3 className='caps'>Military/Overseas Voters</h3>
      <p>
        If you are a military voter or a United States citizen living abroad, you are able to <a href='https://www.votefromabroad.org/vote/home.htm' target='_blank'>request a ballot here</a>.
      </p>
      <h3 className='caps'>More Information</h3>
      <p>
        If you have any questions about voting in {@props.state.name} you may contact your state {if primaryType(@props.state.fillKey, @props.state.label) is 'Caucus' then 'party' else 'elections office'} for more information.
      </p>
      <p>
        <a href={@props.state.office.url} target='_blank'>{@props.state.name} {if primaryType(@props.state.fillKey, @props.state.label) is 'Caucus' then 'Democratic Party' else 'Elections Office'}</a><br />
        Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
      </p>
    </div>
