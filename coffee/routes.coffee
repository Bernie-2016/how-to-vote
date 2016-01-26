React = require('react')
Route = require('react-router').Route

App   = require('components/app')
Map   = require('components/map')
State = require('components/state')

module.exports = (
  <Route component={App}>
    <Route path='/' component={Map} />
    <Route path='/:state' component={State} />
  </Route>
)
