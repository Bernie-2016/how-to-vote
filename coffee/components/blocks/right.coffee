import React           from 'react'
import Sticky          from 'react-stickynode'
import Button          from 'components/blocks/button'
import DateBox         from 'components/blocks/dateBox'
import AddToCal        from 'components/widgets/addToCalWidget'
import Reminder        from 'components/widgets/reminderWidget'
import { primaryType } from 'states'
import moment          from 'moment'

module.exports = React.createClass
  displayName: 'Right'

  render: ->
    <Sticky top={25} bottomBoundary='section.flex'>
      <DateBox title={"#{primaryType(@props.state.fillKey, @props.state.label)} Date"} date={@props.state.date} />
      <AddToCal date={@props.state.date} state={@props.state} />
      <DateBox title='Registration Deadline' date={@props.state.regDate} />
      <AddToCal date={@props.state.regDate} state={@props.state} addendum={' Registration Deadline'} />
      <Reminder {...@props} />

      {if @props.state.regLink || @props.state.chkLink
        <hr className='right-divider' />
      }
      {if @props.state.regLink
        <Button title='Register to Vote' link={@props.state.regLink} classes={'blue' unless moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days')} />
      }
      {if @props.state.chkLink
        <Button title='Check Registration Status' link={@props.state.chkLink} />
      }
    </Sticky>
