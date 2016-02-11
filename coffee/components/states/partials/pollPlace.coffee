import React                                              from 'react'
import { GoogleMapLoader, GoogleMap, DirectionsRenderer } from 'react-google-maps'
import GoogleMaps                                         from 'google-maps'
import $                                                  from 'jquery'

module.exports = React.createClass
  displayName: 'Poll Place Widget'

  getInitialState: ->
    {
      loaded:      false
      notFound:    false
      origin:      null
      destination: null
      directions:  null
      google:      null
      geocoder:    null
    }

  lookup: (e) ->
    e.preventDefault()

    @state.geocoder.geocode address: @state.address, (results, status) =>
      @setState(origin: results[0].geometry.location)

    $.getJSON 'https://ppapi.democrats.org/api', api_key: 'MjBhNGFhNzY5YTk5ZjkyY2JiN2I1ZjE1', address: @state.address, (response) =>

      # DirectionsService = new @state.google.maps.DirectionsService()
      # DirectionsService.route origin: @state.origin, destination: @state.destination, travelMode: @state.google.maps.TravelMode.DRIVING, (result) => 
      #   @setState(directions: result) if status is @state.google.maps.DirectionsStatus.OK

  componentDidMount: ->
    GoogleMaps.load (google) =>
      @setState(google: google, origin: new google.maps.LatLng(37.09024, -95.712891), geocoder: new google.maps.Geocoder())
    
  componentWillUnmount: ->
    GoogleMaps.release()

  render: ->
    <div>
      <h3 className='caps'>Polling Location</h3>
      <input value={@state.address} onChange={ (e) => @setState(address: e.target.value) } />
      <a href='#' onClick={@lookup}>Look up</a>
      {if @state.google && @state.loaded
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
      }
    </div>
