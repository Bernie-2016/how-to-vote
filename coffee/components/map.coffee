import React                   from 'react'
import $                       from 'jquery'
import Datamap                 from 'datamaps/dist/datamaps.usa'
import Header                  from 'components/header'
import { keys, label, states } from 'states'
import entity                  from 'utils/entity'

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
      fills: 
        defaultFill: '#A2A7B7'
      data:  states
      done:  (datamap) =>
        datamap.svg.selectAll('.datamaps-subunit').on 'mouseenter', (geography) ->
          return if states[geography.id].fillKey is keys.UNAVAILABLE
          $(@).css(cursor: 'pointer')

        datamap.svg.selectAll('.datamaps-subunit').on 'mouseleave', (geography) ->
          $(@).css(cursor: 'normal')

        datamap.svg.selectAll('.datamaps-subunit').on 'click', (geography) =>
          return if states[geography.id].fillKey is keys.UNAVAILABLE
          @props.history.pushState(null, "/#{geography.id}")
      geographyConfig:
        highlightOnHover: true
        highlightFillColor: '#EA504E'
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
    <div>
      <Header {...@props} />
      <div id='map'>
        <p className='sub center'>
          Primary {entity('amp')} caucus details for each state
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
    </div>
