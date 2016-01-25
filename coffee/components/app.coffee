React = require('react')

module.exports = React.createClass
  displayName: 'App'

  render: ->
    <div>
      <h1 className='center'>Vote for Bernie</h1>
      {@props.children}
    </div>
