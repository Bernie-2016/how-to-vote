React  = require('react')
Menu   = require('components/menu')
Footer = require('components/footer')
window.$ = require('jquery')

require('scss/app')

module.exports = React.createClass
  displayName: 'App'

  render: ->
    <div>
      <Menu />
      <div id='htv-app'>
        <h1 className='center'>Vote for Bernie</h1>
        {@props.children}
      </div>
      <Footer />
    </div>
