React                 = require('react')
$                     = require('jquery')
MobileDetect          = require('mobile-detect')
moment                = require('moment')
isEdge                = require('is-edge')
Datamap               = require('datamaps/dist/datamaps.usa')
Header                = require('components/header')
{keys, label, states} = require('states')
entity                = require('utils/entity')

module.exports = React.createClass
  displayName: 'Map'

  contextTypes:
    router: React.PropTypes.object

  onChange: (e) ->
    return if e.target.value is 'none'
    @context.router.push("/#{e.target.value}")

  componentDidMount: ->
    map = new Datamap
      element: document.getElementById('map-container')
      scope: 'usa'
      responsive: true
      fills: 
        defaultFill: '#A2A7B7'
      data:  states
      done:  (datamap) =>
        router = @context.router
        datamap.svg.selectAll('.datamaps-subunit').on 'mouseenter', (geography) ->
          return if states[geography.id].fillKey is keys.UNAVAILABLE
          if (new MobileDetect(window.navigator.userAgent)).mobile()
            router.push("/#{geography.id}")
          else
            $(@).css(cursor: 'pointer')

        datamap.svg.selectAll('.datamaps-subunit').on 'mouseleave', (geography) ->
          $(@).css(cursor: 'normal')

        datamap.svg.selectAll('.datamaps-subunit').on 'click', (geography) =>
          return if states[geography.id].fillKey is keys.UNAVAILABLE
          @context.router.push("/#{geography.id}")
      geographyConfig:
        highlightOnHover: !isEdge()
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
