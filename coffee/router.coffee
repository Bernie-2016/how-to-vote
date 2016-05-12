ReactDOM                                                            = require('react-dom')
React                                                               = require('react')
ReactDOMServer                                                      = require('react-dom/server')
{Router, RouterContext, match, browserHistory, createMemoryHistory} = require('react-router')
routes                                                              = require('routes')
Root                                                                = require('components/root')

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
