import React                 from 'react'
import TopInfo               from 'components/partials/topInfo'
import RightInfo             from 'components/partials/rightInfo'
import Offices               from 'components/widgets/officesWidget'
import { primaryType, verb } from 'states'
import $                     from 'jquery'

module.exports = React.createClass
  displayName: 'WA State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <TopInfo {...@props} />
        <h3 className='caps'>Can't attend in person?</h3>
        <p>
          You can complete affidavit forms from now until March 18th. Anyone who cannot attend the caucuses for the reasons below will be allowed to submit a "surrogate affidavit", allowing you to cast your vote remotely.
        </p>
        <ul>
          <li>Religious observance</li>
          <li>Military service</li>
          <li>Work schedule</li>
          <li>Disability or illness</li>
        </ul>
        <p>
          You can download the surrogate affidavit <a href='http://www.wa-democrats.org/sites/wadems/files/documents/2016%20Precinct%20Caucuses%20-%2099%20-%20Surrogate%20Affidavit%20Form.pdf' target='_blank'>here</a>. Please scan and email forms to <a href='mailto:WACaucus@berniesanders.com'>WACaucus@berniesanders.com</a> on or before March 18, 2016.
        </p>
        <h3 className='caps'>Only 17?</h3>
        <p>
          You may still {verb(@props.state)} in {@props.state.name} if you will be 18 years old by November 8, 2016.
        </p>
        <h3 className='caps'>College Students</h3>
        <p>
          If you are a college student not living in your home state, you can vote for Bernie in either your home state or in the state in which you are attending school!
        </p>
        <h3 className='caps'>More Information</h3>
        <p>
          If you have any questions about voting in {@props.state.name} you may contact your state {if primaryType(@props.state.fillKey, @props.state.label) is 'Caucus' then 'party' else 'elections office'} for more information.
        </p>
        <p>
          <a href={@props.state.office.url} target='_blank'>{@props.state.name} {if primaryType(@props.state.fillKey, @props.state.label) is 'Caucus' then 'Democratic Party' else 'Elections Office'}</a><br />
          Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
        </p>
        <p>
          You may also contact Bernie Sanders Washington State HQ:<br /> <a href='tel:+12065551212'>(206) 555-1212</a>.
        </p>
        <Offices {...@props} />
      </div>
      <div className='right'>
        <RightInfo {...@props} />
      </div>
    </section>
