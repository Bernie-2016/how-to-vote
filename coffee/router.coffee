import ReactDOM                   from 'react-dom'
import React                      from 'react'
import { Router, browserHistory } from 'react-router'
import routes                     from 'routes'

createElement = (Component, props) ->
  <Component key={new Date().getTime()} {...props} />

container = document.createElement('div')
document.body.appendChild(container)
ReactDOM.render(<Router history={browserHistory} routes={routes} createElement={createElement} />, container)
