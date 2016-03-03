import React               from 'react'
import { Route, Redirect } from 'react-router'
import App                 from 'components/app'
import NotFound            from 'components/notFound'
import Map                 from 'components/map'
import State               from 'components/state'

module.exports = (
  <Route component={App}>
    <Route path='/' component={Map} />
    <Route path='/:state' component={State} />
    <Redirect from='/:state/' to='/:state' />
    <Route path='*' component={NotFound} />
  </Route>
)
