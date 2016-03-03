import ReactDOM                                                              from 'react-dom'
import React                                                                 from 'react'
import ReactDOMServer                                                        from 'react-dom/server'
import { Router, RouterContext, match, browserHistory, createMemoryHistory } from 'react-router'
import routes                                                                from 'routes'

createElement = (Component, props) ->
  <Component key={new Date().getTime()} {...props} />

if typeof document isnt 'undefined'
  initialProps = JSON.parse(document.getElementById('initial-props').innerHTML) if __PROD__
  container = document.createElement('div')
  document.body.appendChild(container)
  ReactDOM.render(<Router history={browserHistory} routes={routes} createElement={createElement} {...initialProps} />, container)

module.exports = (locals, callback) -> 
  history = createMemoryHistory()
  location = history.createLocation(locals.path)

  match routes: routes, location: location, (error, redirectLocation, renderProps) ->
    callback(null, ReactDOMServer.renderToStaticMarkup(<RouterContext {...renderProps} />))
