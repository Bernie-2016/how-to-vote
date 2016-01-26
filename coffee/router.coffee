ReactDOM = require('react-dom')
React  = require('react')
Router = require('react-router').Router
createBrowserHistory = require('history/lib/createBrowserHistory')
routes = require('./routes')

ReactDOM.render(<Router history={createBrowserHistory()} routes={routes} />, document.getElementById('app'))
