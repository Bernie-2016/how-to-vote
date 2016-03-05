import React  from 'react'
import moment from 'moment'

module.exports = React.createClass
  displayName: 'Deadline'

  render: ->
    <div>
      {if moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days')
        <p>
          You must be registered to vote by {moment(@props.state.regDate, 'YYYY MM DD').format('dddd, MMMM Do')} in {@props.state.name}.
        </p>
      else
        <p>
          You must have been registered to vote by {moment(@props.state.regDate, 'YYYY MM DD').format('dddd, MMMM Do')} in {@props.state.name}.
        </p>
      }
    </div>
