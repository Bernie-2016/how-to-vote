React         = require('react')
AddToCal      = require('components/widgets/addToCalWidget')
Reminder      = require('components/widgets/reminderWidget')
Share        = require('components/widgets/shareWidget')

module.exports = React.createClass
  displayName: 'Share Bar'

  render: ->
    <div className='share-bar'>
      <Reminder {...@props} />
      <AddToCal date={@props.state.date} state={@props.state} />
      <Share {...@props} />
    </div>
