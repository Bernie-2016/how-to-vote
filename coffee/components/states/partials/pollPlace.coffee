import React                                              from 'react'
import { GoogleMapLoader, GoogleMap, DirectionsRenderer } from 'react-google-maps'
import GoogleMaps                                         from 'google-maps'
import $                                                  from 'jquery'

GoogleMaps.key = if __PROD__ then 'AIzaSyCFQ50iI4VcALSPhuOkxsB7YI3yElr92bE' else require('credentials.json').googleKey

module.exports = React.createClass
  displayName: 'Poll Place Widget'

  getInitialState: ->
    {
      loading:     false
      loaded:      false
      notFound:    false
      origin:      null
      directions:  null
      google:      null
      geocoder:    null
      pollPlace:   {}
    }

  lookup: (e) ->
    e.preventDefault()
    @setState(loaded: false, loading: true, notFound: false)

    # Geocode and set origin at 
    @state.geocoder.geocode address: @state.address, (results, status) =>
      @setState(origin: results[0].geometry.location)

    $.getJSON 'https://ppapi.democrats.org/api', api_key: 'MjBhNGFhNzY5YTk5ZjkyY2JiN2I1ZjE1', address: @state.address, (response) =>
      if response.status isnt 'success'
        @setState(notFound: true, loading: false)
      else
        pollAddress = "#{response.pollingLocation.line1}, #{response.pollingLocation.city}, #{response.pollingLocation.state} #{response.pollingLocation.zip}"
        @state.geocoder.geocode address: pollAddress, (results, status) =>
          destination = results[0].geometry.location

          DirectionsService = new @state.google.maps.DirectionsService()
          DirectionsService.route origin: @state.origin, destination: destination, travelMode: @state.google.maps.TravelMode.DRIVING, (result) => 
            @setState(loaded: true, loading: false, directions: result, pollPlace: response.pollingLocation)

  reset: (e) ->
    e.preventDefault()
    @setState(address: null, loaded: false, loading: false, origin: null, directions: null, pollPlace: {})

  componentDidMount: ->
    GoogleMaps.load (google) =>
      @setState(google: google, origin: new google.maps.LatLng(37.09024, -95.712891), geocoder: new google.maps.Geocoder())
    
  componentWillUnmount: ->
    GoogleMaps.release()

  render: ->
    <div>
      <h3 className='caps'>Polling Location</h3>
      {if @state.google
        <div className='poll-widget'>
          {unless @state.loaded
            <div>
              <input placeholder='Home Address' value={@state.address} onChange={ (e) => @setState(address: e.target.value) } />
              <a href='#' onClick={@lookup} className='btn'>{if @state.loading then 'Searching...' else 'Look up'}</a>
            </div>
          }
          {if @state.loaded
            <div>
              <br />
              <p>
                {@state.pollPlace.locationName}
              </p>
              <p>
                {@state.pollPlace.line1}
              </p>
              <p>
                {@state.pollPlace.city}, {@state.pollPlace.state} {@state.pollPlace.zip}
              </p>
              <br />
              <GoogleMapLoader
                containerElement={
                  <div {...@props} style={ height: '400px' } />
                }
                googleMapElement={
                  <GoogleMap zoom={7} center={@state.origin}>
                    {if @state.directions
                      <DirectionsRenderer directions={@state.directions} />
                    }
                  </GoogleMap>
                }
              />
              <a href='#' onClick={@reset} className='btn'>Look Up Another</a>
            </div>
          }
          {if @state.notFound
            <p>
              We were unable to locate the polling place for that address; please consult your state's website.
            </p>
          }
        </div>
      }
    </div>
