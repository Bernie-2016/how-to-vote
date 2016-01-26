React   = require('react')
$       = require('jquery')
Datamap = require('datamaps/dist/datamaps.usa.min')
keys    = require('states').keys
fills   = require('states').fills
label   = require('states').label
states  = require('states').states

module.exports = React.createClass
  displayName: 'Map'

  componentDidMount: ->
    map = new Datamap
      element: document.getElementById('map-container')
      scope: 'usa'
      fills: fills  
      data:  states
      done:  (datamap) =>
        datamap.svg.selectAll('.datamaps-subunit').on 'click', (geography) =>
          return if states[geography.id].fillKey is keys.UNAVAILABLE
          @props.history.pushState(null, "/#{geography.id}")
      geographyConfig:
        highlightFillColor: '#FFFFFF'
        popupTemplate: (geo, data) ->
          [
            '<div class="hoverinfo"><strong>'
            geo.properties.name
            '</strong><br />'
            if data.fillKey is keys.OTHER then data.label else label(data.fillKey)
            '</div>'
          ].join('')

  render: ->
    <div>
      <p className='center'>
        Select your state to find out how to support Bernie in the primary or caucus.
      </p>

      <div id='map-wrapper'>
        <div id='map-container'>
        </div>
      </div>
    </div>
