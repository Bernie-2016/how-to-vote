React  = require('react')
Footer = require('./footer')

module.exports = React.createClass
  displayName: 'App'

  render: ->
    <div>
      <div id='htv-app'>
        <h1 className='center'>Vote for Bernie</h1>
        {@props.children}
      </div>
      <Footer />
    </div>
