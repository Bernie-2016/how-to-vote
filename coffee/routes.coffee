React             = require('react')
{Route, Redirect} = require('react-router')
App               = require('components/app')
NotFound          = require('components/notFound')
Map               = require('components/map')
State             = require('components/state')

module.exports = (
  <Route component={App}>
    <Route path='/' component={Map} />
    <Route path='/:state' component={State} />
    <Redirect from='/:state/' to='/:state' />
    <Route path='*' component={NotFound} />
  </Route>
)
