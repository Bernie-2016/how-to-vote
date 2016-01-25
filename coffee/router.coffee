ReactDOM = require('react-dom')
React = require('react')
Router = require('react-router').Router
Route = require('react-router').Route
browserHistory = require('react-router').browserHistory

# Require route components.
App = require('./components/app')
Map = require('./components/map')
State = require('./components/state')

# Define up and render routes.
router = (
  <Router history={browserHistory}>
    <Route component={App}>
      <Route path='/' component={Map} />
      <Route path='/:state' component={State} />
    </Route>
  </Router>
)
ReactDOM.render(router, document.getElementById('htv-app'))
