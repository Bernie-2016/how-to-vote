React   = require('react')
$       = require('jquery')
Datamap = require('datamaps/dist/datamaps.usa')
keys    = require('states').keys
fills   = require('states').fills
label   = require('states').label
states  = require('states').states

module.exports = React.createClass
  displayName: 'Map'

  onChange: (e) ->
    return if e.target.value is 'none'
    @props.history.pushState(null, "/#{e.target.value}")

  componentDidMount: ->
    map = new Datamap
      element: document.getElementById('map-container')
      scope: 'usa'
      responsive: true
      fills: fills  
      data:  states
      done:  (datamap) =>
        datamap.svg.selectAll('.datamaps-subunit').on 'mouseenter', (geography) ->
          return if states[geography.id].fillKey is keys.UNAVAILABLE
          $(@).css(cursor: 'pointer', opacity: 0.6)

        datamap.svg.selectAll('.datamaps-subunit').on 'mouseleave', (geography) ->
          $(@).css(cursor: 'normal', opacity: 1)
          
        datamap.svg.selectAll('.datamaps-subunit').on 'click', (geography) =>
          return if states[geography.id].fillKey is keys.UNAVAILABLE
          @props.history.pushState(null, "/#{geography.id}")
      geographyConfig:
        highlightOnHover: false
        popupTemplate: (geo, data) ->
          [
            '<div class="hoverinfo"><strong>'
            geo.properties.name
            '</strong><br />'
            if data.fillKey is keys.OTHER then data.label else label(data.fillKey)
            '</div>'
          ].join('')

    $(window).on 'resize', ->
      map.resize()

  render: ->
    <div id='map'>
      <p className='center'>
        Select your state to find out how to support Bernie in the primary or caucus.
      </p>

      <select id='state-select' onChange={@onChange}>
        <option key='select' value='none'>Select State...</option>
        {for code, state of states when state.fillKey isnt keys.UNAVAILABLE
          <option key={code} value={code}>{state.name}</option>
        }
      </select>

      <div id='map-wrapper'>
        <div id='map-container'>
        </div>
      </div>
    </div>
