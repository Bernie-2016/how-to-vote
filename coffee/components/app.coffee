import React  from 'react'
import Menu   from 'components/menu'
import Footer from 'components/footer'

require('scss/app')

module.exports = React.createClass
  displayName: 'App'

  render: ->
    <div>
      <Menu />
      <div id='htv-app'>
        {@props.children}
      </div>
      <Footer />
    </div>
