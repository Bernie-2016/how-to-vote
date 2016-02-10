import React    from 'react'
import { Link } from 'react-router'
import Sticky   from 'react-stickynode'
import entity   from 'utils/entity'

module.exports = React.createClass
  displayName: 'State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>Key Information</h2>
        <p>
          {@props.state.name} has {@props.state.dtlName} {entity('mdash')} {@props.state.byline}
        </p>
        {if @props.state.sameDay
          <p>
            {@props.state.sameDay}
          </p>
        else
          <p>
            You must be registered to vote by {@props.state.regDate} in {@props.state.name}.
          </p>
        }

        <h3 className='caps'>Only 17?</h3>
        <p>
          You may still vote in {@props.state.name} if you will be 18 years old by November 8, 2016.
        </p>
        <h3 className='caps'>College Students</h3>
        <p>
          If you are a college student not living in your home state, you can vote for Bernie in either your home state or in the state in which you are attending school!
        </p>
        <h3 className='caps'>Military/Overseas Voters</h3>
        <p>
          If you are a Military Voter or a United States citizen living abroad, you are able to <a href='https://www.overseasvotefoundation.org/vote/VoterInformation.htm'>complete a ballot here</a>.
        </p>
        <h3 className='caps'>More Information</h3>
        <p>
          If you have any questions about voting in {@props.state.name} you may contact your official elections office.
        </p>
        <p>
          <a href={@props.state.office.url}>Official {@props.state.name} Elections Website</a><br />
          Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
        </p>
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <h3 className='caps'>Caucus Date</h3>
          <p className='date jubilat blue'>
            {@props.state.date}
          </p>
          <h3 className='caps'>
            Registration Deadline
          </h3>
          <p className='date jubilat blue'>
            {@props.state.regDate}
          </p>
          <p>
            <Link to={@props.state.regLink} className='btn red'>
              Register to Vote
            </Link>
          </p>
          <p>
            <Link to={@props.state.chkLink} className='btn'>
              Check Registration Status
            </Link>
          </p>
        </Sticky>
      </div>
    </section>
