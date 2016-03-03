import React     from 'react'
import Html      from 'react-html'
import Menu      from 'components/menu'
import Footer    from 'components/footer'
import _         from 'lodash'
import stringify from 'json-stringify-safe'

require('scss/app')

safeStringify = (obj) ->
  stringify(obj).replace(/<\/script/g, '<\\/script').replace(/<!--/g, '<\\!--')

module.exports = React.createClass
  displayName: 'App'

  render: ->
    if typeof document is 'undefined'
      propsToStringify = _.cloneDeep(@props)
      delete propsToStringify.history

    contents = 
      <div>
        <Menu />
        <div id='htv-app'>
          {@props.children}
        </div>
        <Footer />
        {if typeof document is 'undefined'
          <script id='initial-props' type='application/json' dangerouslySetInnerHTML={__html: safeStringify(propsToStringify)} />
        }
        <script src='../production.min.js' />
      </div>
    
    if typeof document is 'undefined'
      <Html>{contents}</Html>
    else
      <div>{contents}</div>
