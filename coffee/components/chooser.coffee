React          = require('react')
OnClickOutside = require('react-onclickoutside')
$              = require('jquery')
{states, keys} = require('states')

module.exports = React.createClass
  displayName: 'Chooser'

  mixins: [OnClickOutside]

  contextTypes:
    router: React.PropTypes.object

  getInitialState: ->
    {
      open: false
    }

  handleClickOutside: ->
    @setState(open: false)

  onClick: (e) ->
    e.preventDefault()
    @setState(open: !@state.open)

  visit: (e) ->
    if $(e.target).data('url') is '/DA'
      window.location.href = 'http://go.berniesanders.com/page/s/democrats-abroad'
    else
      @context.router.push($(e.target).data('url'))

  render: ->
    <div id='select' onClick={@onClick}>
      {(states[@props.state] || {}).name || 'America'}
      <ul hidden={!@state.open}>
        <li className='heading'>Select Your State</li>
        {for key, state of states when state.fillKey isnt keys.UNAVAILABLE
          <li key={key} data-url={"/#{key}"} onClick={@visit}>
            {state.name}
          </li>
        }
      </ul>
    </div>
