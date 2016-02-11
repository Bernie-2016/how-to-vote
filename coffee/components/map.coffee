import React                   from 'react'
import $                       from 'jquery'
import moment                  from 'moment'
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
          if data.fillKey is keys.UNAVAILABLE
            [
              "<div class='hoverinfo'>"
              "<div class='name'>#{geo.properties.name}</div>"
              "<div class='small'>Status</div>"
              "<div class='large'>Coming Soon</div>"
              "</div>"
            ].join('')
          else
            [
              "<div class='hoverinfo'>"
              "<div class='name'>#{geo.properties.name}</div>"
              "<div class='small'>Date</div>"
              "<div class='large'>#{moment(data.date, 'YYYY MM DD').format('dddd, MMMM Do')}</div>"
              "<div class='small'>Type</div>"
              "<div class='large'>#{if data.fillKey is keys.OTHER then data.label else label(data.fillKey)}</div>"
              "</div>"
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

        <div id='map-wrapper'>
          <div id='map-container'>
          </div>
        </div>
      </div>
    </div>
