ReactDOM = require('react-dom')
React  = require('react')
Router = require('react-router').Router
createBrowserHistory = require('history/lib/createBrowserHistory')
routes = require('./routes')

container = document.createElement('div')
document.body.appendChild(container)
ReactDOM.render(<Router history={createBrowserHistory()} routes={routes} />, container)
