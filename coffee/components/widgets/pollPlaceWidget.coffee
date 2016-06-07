React                                            = require('react')
{GoogleMapLoader, GoogleMap, DirectionsRenderer} = require('react-google-maps')
GoogleMaps                                       = require('google-maps')
$                                                = require('jquery')
queryString                                      = require('query-string')
{primaryType}                                    = require('states')
overrides                                        = require('overrides')

GoogleMaps.KEY = if __PROD__ then 'AIzaSyCFQ50iI4VcALSPhuOkxsB7YI3yElr92bE' else require('credentials.json').googleKey

module.exports = React.createClass
  displayName: 'Poll Place Widget'

  getInitialState: ->
    {
      loading:       false
      loaded:        false
      notFound:      false
      submitted:     false
      origin:        null
      address:       if typeof location isnt 'undefined' then queryString.parse(location.search)['newaddr'] || '' else ''
      directions:    null
      google:        null
      geocoder:      null
      pollPlace:     {}
      earlyVoteSite: {}
      addressObj:    {}
      email:         null
      show:          null
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
      if response.homeAddress
        address =
          address: response.homeAddress.line1
          city: response.homeAddress.city
          state: response.homeAddress.state
          zip: response.homeAddress.zip
        @setState(addressObj: address)
      if response.status isnt 'success'
        @setState(notFound: true, loading: false)
      else
        if response.earlyVoteSite
          earlyVoteSite = overrides.place(response.earlyVoteSite) || response.earlyVoteSite
          @setState(earlyVoteSite: earlyVoteSite)
        if response.pollingLocation
          pollingLocation = overrides.place(response.pollingLocation) || response.pollingLocation
          @setState(pollPlace: pollingLocation)

        if not $.isEmptyObject(earlyVoteSite) and @props.state.earlyVoteLive
          @setState(show: 'earlyVoteSite')
          @getDirections(earlyVoteSite)
        else
          @setState(show: 'pollPlace')
          @getDirections(pollingLocation)

  getDirections: (pollingLocation) ->
    if JSON.stringify(pollingLocation) == JSON.stringify(@state.earlyVoteSite)
      @setState(show: 'earlyVoteSite')
    else
      @setState(show: 'pollPlace')

    if pollingLocation.zip is null
      pollingLocation.zip = @state.addressObj.zip

    if pollingLocation.city is null
      pollingLocation.city = @state.addressObj.city

    pollAddress = "#{pollingLocation.line1}, #{pollingLocation.city}, #{pollingLocation.state} #{pollingLocation.zip}"

    @state.geocoder.geocode address: pollAddress, (results, status) =>
      override = overrides.geocode(results[0].place_id)
      if override
        destination = new google.maps.LatLng(override)
      else
        destination = results[0].geometry.location

      DirectionsService = new @state.google.maps.DirectionsService()
      DirectionsService.route origin: @state.origin, destination: destination, travelMode: @state.google.maps.TravelMode.DRIVING, (result) =>
        @setState(loaded: true, loading: false, directions: result)

  submitClick: (e) ->
    e.preventDefault()
    @lookup()
    if @state.email is ''
      alert 'Please enter your email address.'
      return
    data =
      email: @state.email
      addr1: @state.addressObj.address
      city: @state.addressObj.city
      state_cd: @state.addressObj.state
      zip: @state.addressObj.zip
    $.post('https://go.berniesanders.com/page/sapi/missing-polling-location',
      data)
      .done (response) =>
        @setState(submitted: true)
      .fail (response) =>
        alert 'Submission error; please make sure you typed a valid address (Address, City, State, Zip) and email and try again.'


  reset: (e) ->
    e.preventDefault()
    @setState(address: null, loaded: false, loading: false, submitted: false, origin: null, directions: null, pollPlace: {}, addressObj: {}, email: null, show: null, earlyVoteSite: {})

  componentDidMount: ->
    return unless @props.state.pollWgt
    GoogleMaps.load (google) =>
      @setState(google: google, origin: new google.maps.LatLng(37.09024, -95.712891), geocoder: new google.maps.Geocoder())
      unless @state.address is ''
        @lookup()
        $(window).scrollTop $(@getDOMNode()).offset().top

  componentWillUnmount: ->
    GoogleMaps.release()

  render: ->
    title = @props.title
    title ||= (if primaryType(@props.state.fillKey, @props.state.label) is 'Caucus' then 'Precinct Caucus' else 'Polling')
    <div hidden={!@props.state.pollWgt} className="polling-location #{'expanded' if @state.loaded}" id="polling-location">
      <h3 className='caps'>{title} Location</h3>
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
              {if @state.show == 'earlyVoteSite'
                pollPlace = @state.earlyVoteSite
                <div>
                  <h2>Early Vote Polling Place</h2>
                  {if not $.isEmptyObject(@state.pollPlace)
                    <div className='btn btn-secondary' onClick={(e) => @getDirections(@state.pollPlace)}>Show Election Day Polling Place</div>
                  }
                </div>
              else
                pollPlace = @state.pollPlace
                <div>
                  <h2>Election Day Polling Place</h2>
                  {if not $.isEmptyObject(@state.earlyVoteSite) and @props.state.earlyVoteLive
                    <div className='btn btn-secondary' onClick={(e) => @getDirections(@state.earlyVoteSite)}>Show Early Vote Polling Place</div>
                  }
                </div>
              }
              <br />
              <p>
                {pollPlace.locationName}
              </p>
              <p>
                {pollPlace.hours}
              </p>
              <p>
                {pollPlace.line1}
              </p>
              <p>
                {pollPlace.city}, {pollPlace.state} {pollPlace.zip}
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
              We were unable to locate the polling place for that address; please enter your address and email to be notified about your location.
              <input placeholder={@props.placeholder || "Address where you're registered to vote"} value={@state.address} onChange={ (e) => @setState(address: e.target.value) } onKeyUp={@onKeyUp}/>
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
