React                 = require('react')
Header                = require('components/header')
NotFound              = require('components/notFound')
entity                = require('utils/entity')
{label, states, keys} = require('states')
$                     = require('jquery')


module.exports = React.createClass
  displayName: 'State'

  contextTypes:
    router: React.PropTypes.object

  componentDidMount: ->
    state = states[@props.params.state.toUpperCase()]
    @context.router.push('/') if state && state.fillKey is keys.UNAVAILABLE

    $('.section-header').on 'click', ->
      $(this).parent().toggleClass 'expanded'

  render: ->
    stateKey = @props.params.state.toUpperCase()
    state = states[stateKey]

    if typeof state is 'undefined'
      StateComponent = NotFound
    else
      StateComponent = require("components/states/#{@props.params.state.toLowerCase()}")

    return (
      <div>
        <Header state={state} {...@props} />
        <StateComponent skipHeader={true} stateKey={stateKey} state={state} />
      </div>
    )
