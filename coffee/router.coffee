import ReactDOM      from 'react-dom'
import React         from 'react'
import { Router }    from 'react-router'
import createHistory from 'history/lib/createBrowserHistory'
import routes        from 'routes'

container = document.createElement('div')
document.body.appendChild(container)
ReactDOM.render(<Router history={createHistory()} routes={routes} />, container)
