React  = require('react')
Menu   = require('components/menu')
Footer = require('components/footer')

require('scss/app')

module.exports = React.createClass
  displayName: 'App'

  render: ->
    <div>
      <Menu />
      <div id='htv-app'>
        <h1 className='center'><span className='kern'>V</span>oting for Bernie</h1>
        {@props.children}
      </div>
      <Footer />
    </div>
