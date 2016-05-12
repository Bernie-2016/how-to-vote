React           = require('react')
GoogleAnalytics = require('react-g-analytics')
Menu            = require('components/menu')
Footer          = require('components/footer')

require('scss/app')

module.exports = React.createClass
  displayName: 'App'

  componentDidMount: ->
    window.addeventasync = ->
      addeventatc.settings(license: 'acTHErYsazWyqhMFwmra14373')

  render: ->
    <div>
      <Menu />
      <div id='htv-app'>
        {@props.children}
      </div>
      <Footer />
      <GoogleAnalytics id='UA-58354050-1' />
    </div>
