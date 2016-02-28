import React                                              from 'react'
import { GoogleMapLoader, GoogleMap, Marker, InfoWindow } from 'react-google-maps'
import { triggerEvent }                                   from 'react-google-maps/lib/utils'
import GoogleMaps                                         from 'google-maps'
import $                                                  from 'jquery'
import _                                                  from 'lodash'

GoogleMaps.KEY = if __PROD__ then 'AIzaSyCFQ50iI4VcALSPhuOkxsB7YI3yElr92bE' else require('credentials.json').googleKey

module.exports = React.createClass
  displayName: 'Offices Widget'

  getInitialState: ->
    {
      google:  null
      bounds:  null
      markers: []
    }

  handleMarkerClick: (marker) ->
    marker = _.find(@state.markers, marker)
    marker.showInfo = true
    @setState(markers: @state.markers)
  
  handleMarkerClose: (marker) ->
    marker = _.find(@state.markers, marker)
    marker.showInfo = false
    @setState(markers: @state.markers)

  componentDidMount: ->
    GoogleMaps.load (google) =>
      geocoder = new google.maps.Geocoder()

      geocoder.geocode address: "State of #{@props.state.name}", (results, status) =>
        @setState(google: google, bounds: results[0].geometry.viewport)

    $.getJSON 'http://googledoctoapi.forberniesanders.com/1hJadb6JyDekHf5Vzx-77h7sdJRCOB01XUPvEpKIckDs/', (response) =>
      @setState(markers: _.filter(response, state: @props.stateKey))
    
  componentWillUnmount: ->
    GoogleMaps.release()

  componentDidUpdate: ->
    if @mapComponent
      triggerEvent(@mapComponent, 'resize')
      if @state.bounds
        @mapComponent.fitBounds(@state.bounds) 
        @mapComponent.panToBounds(@state.bounds) 
  
  render: ->
    <div hidden={_.isEmpty(@state.markers)}>
      <h3 className='caps'>Campaign Offices</h3>
      {if @state.google
        <GoogleMapLoader
          containerElement={
            <div {...@props} style={ height: '400px' } />
          }
          googleMapElement={
            <GoogleMap ref={ (map) => @mapComponent = map }>
              {for marker in @state.markers
                <Marker key={marker.lat + marker.lon} position={lat: parseFloat(marker.lat), lng: parseFloat(marker.lon)} onClick={@handleMarkerClick.bind(@, marker)}>
                  {if marker.showInfo
                    <InfoWindow onCloseclick={@handleMarkerClose.bind(@, marker)}>
                      <div>
                        <p>
                          <strong>{marker.name}</strong>
                        </p>
                        <p>
                          {marker.address}
                        </p>
                        <p>
                          {marker.phone}
                        </p>
                        <img src={marker.photo} style={maxHeight: '150px', maxWidth: '150px'} />
                      </div>
                    </InfoWindow>
                  }
                </Marker>
              }
            </GoogleMap>
          }
        />
      }
    </div>
