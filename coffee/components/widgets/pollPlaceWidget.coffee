import React                                              from 'react'
import { GoogleMapLoader, GoogleMap, DirectionsRenderer } from 'react-google-maps'
import GoogleMaps                                         from 'google-maps'
import $                                                  from 'jquery'
import queryString                                        from 'query-string'
import { primaryType }                                    from 'states'

GoogleMaps.KEY = if __PROD__ then 'AIzaSyCFQ50iI4VcALSPhuOkxsB7YI3yElr92bE' else require('credentials.json').googleKey

module.exports = React.createClass
  displayName: 'Poll Place Widget'

  getInitialState: ->
    {
      loading:     false
      loaded:      false
      notFound:    false
      submitted:   false
      origin:      null
      address:     queryString.parse(location.search)['newaddr'] || ''
      directions:  null
      google:      null
      geocoder:    null
      pollPlace:   {}
      addressObj:  {}
      email:       null
    }

  onKeyUp: (e) ->
    @lookup() if e.keyCode is 13

  lookupClick: (e) ->
    e.preventDefault()
    @lookup()

  lookup: ->
    @setState(loaded: false, loading: true, notFound: false)

    # Geocode and set origin
    @state.geocoder.geocode address: @state.address, (results, status) =>
      @setState(origin: results[0].geometry.location)

    $.getJSON 'https://ppapi.democrats.org/api', api_key: 'MjBhNGFhNzY5YTk5ZjkyY2JiN2I1ZjE1', address: @state.address, (response) =>
      if response.status isnt 'success'
        address =
          address: response.homeAddress.line1
          city: response.homeAddress.city
          state: response.homeAddress.state
          zip: response.homeAddress.zip 
        @setState(notFound: true, loading: false, addressObj: address)
      else
        pollingLocation = response.pollingLocation

        pollAddress = "#{pollingLocation.line1}, #{pollingLocation.city}, #{pollingLocation.state} #{pollingLocation.zip}"
        @state.geocoder.geocode address: pollAddress, (results, status) =>
          destination = results[0].geometry.location

          DirectionsService = new @state.google.maps.DirectionsService()
          DirectionsService.route origin: @state.origin, destination: destination, travelMode: @state.google.maps.TravelMode.DRIVING, (result) => 
            @setState(loaded: true, loading: false, directions: result, pollPlace: pollingLocation)

  submitClick: (e) ->
    e.preventDefault()
    if @state.email is ''
      alert 'Please enter your email address.'
      return
    data =
      email: @state.email
      addr1: @state.addressObj.address
      city: @state.addressObj.city
      state_cd: @state.addressObj.state
      zip: @state.addressObj.zip
    $.post 'https://go.berniesanders.com/page/sapi/missing-polling-location', data, (r) =>
      if r.status isnt 'success'
        alert 'Submission error; please double-check and try again.'
      else
        @setState(submitted: true)

  reset: (e) ->
    e.preventDefault()
    @setState(address: null, loaded: false, loading: false, submitted: false, origin: null, directions: null, pollPlace: {}, addressObj: {}, email: null)

  componentDidMount: ->
    GoogleMaps.load (google) =>
      @setState(google: google, origin: new google.maps.LatLng(37.09024, -95.712891), geocoder: new google.maps.Geocoder())
      unless @state.address is ''
        @lookup()
        $(window).scrollTop $(@getDOMNode()).offset().top
    
  componentWillUnmount: ->
    GoogleMaps.release()

  render: ->
    <div>
      <h3 className='caps'>{if primaryType(@props.state.fillKey, @props.state.label) is 'Caucus' then 'Precinct Caucus' else 'Polling'} Location</h3>
      {if @state.google
        <div className='poll-widget'>
          {unless @state.loaded || @state.notFound
            <div>
              <input placeholder={@props.placeholder || "Address where you're registered to vote"} value={@state.address} onChange={ (e) => @setState(address: e.target.value) } onKeyUp={@onKeyUp} />
              <a href='#' onClick={@lookupClick} className='btn'>{if @state.loading then 'Searching...' else 'Look up'}</a>
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
          {if @state.notFound && !@state.submitted
            <p>
              We were unable to locate the polling place for that address; please enter your email address to be notified about your location.
              <input placeholder='Email address' value={@state.email} onChange={ (e) => @setState(email: e.target.value) } />
              <a href='#' onClick={@submitClick} className='btn'>Submit</a>
            </p>
          }
          {if @state.notFound && @state.submitted
            <p>
              Thanks! We'll email you your polling location.
              <a href='#' onClick={@reset} className='btn'>Look Up Another</a>
            </p>
          }
        </div>
      }
    </div>
