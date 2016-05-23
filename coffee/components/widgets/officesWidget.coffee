React                                            = require('react')
{GoogleMapLoader, GoogleMap, Marker, InfoWindow} = require('react-google-maps')
GoogleMaps                                       = require('google-maps')
_                                                = require('lodash/core')
offices                                          = require('data/offices')

GoogleMaps.KEY = if __PROD__ then 'AIzaSyCFQ50iI4VcALSPhuOkxsB7YI3yElr92bE' else require('credentials.json').googleKey

module.exports = React.createClass
  displayName: 'Offices Widget'

  getInitialState: ->
    {
      bounds:  null
      markers: _.filter(offices, state: @props.stateKey)
    }

  handleMarkerClick: (marker) ->
    openMarker = _.find(@state.markers, showInfo: true)
    openMarker.showInfo = false if openMarker
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

  componentWillUnmount: ->
    GoogleMaps.release()

  fit: (map) ->
    return unless map
    map.fitBounds(@state.bounds)
    map.panToBounds(@state.bounds)

  render: ->
    <div id='campaign-offices' className='section' hidden={_.isEmpty(@state.markers)}>
      <div className='section-header'>
        <h3 className='caps'>Campaign Offices</h3>
      </div>

      <div className='section-body'>
        {if @state.bounds
          <GoogleMapLoader
            containerElement={
              <div {...@props} style={ height: '400px' } />
            }
            googleMapElement={
              <GoogleMap ref={@fit}>
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

      <a className='btn blue' href='https://berniesanders.com/volunteer' target='_blank'>
        Volunteer
      </a>
    </div>
