import ReactDOM                                                              from 'react-dom'
import React                                                                 from 'react'
import ReactDOMServer                                                        from 'react-dom/server'
import { Router, RouterContext, match, browserHistory, createMemoryHistory } from 'react-router'
import routes                                                                from 'routes'
import Root from 'components/root'

createElement = (Component, props) ->
  <Component key={new Date().getTime()} {...props} />

if typeof document isnt 'undefined'
  ReactDOM.render(<Router history={browserHistory} routes={routes} createElement={createElement}  />, document.getElementById('app'))

module.exports = (locals, callback) -> 
  history = createMemoryHistory()
  location = history.createLocation(locals.path)

  match routes: routes, location: location, (error, redirectLocation, renderProps) ->
    html = ReactDOMServer.renderToStaticMarkup(
      <Root location={location}>
        <RouterContext {...renderProps} />
      </Root>
    )
    callback(null, html)
