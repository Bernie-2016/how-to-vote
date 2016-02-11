import React  from 'react'
import moment from 'moment'
import entity from 'utils/entity'

module.exports = React.createClass
  displayName: 'State Top Info'

  render: ->
    <div>
      <h2>Key Information</h2>
      <p>
        {@props.state.name} has {@props.state.dtlName} {entity('mdash')} {@props.state.byline}
      </p>
      {if @props.state.sameDay
        <p>
          {@props.state.sameDay}
        </p>
      else if moment(@props.state.regDate, 'YYYY MM DD') > moment()
        <p>
          You must be registered to vote by {moment(@props.state.regDate, 'YYYY MM DD').format('dddd, MMMM Do')} in {@props.state.name}.
        </p>
      else
        <p>
          You must have been registered to vote by {moment(@props.state.regDate, 'YYYY MM DD').format('dddd, MMMM Do')} in {@props.state.name}.
        </p>
      }
    </div>
