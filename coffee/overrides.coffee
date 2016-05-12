_            = require('lodash')
overrides    = require('data/overrides')
geoOverrides = require('data/geoOverrides')

overrides = overrides.split("\n")
overrides = _.map(overrides, (o) -> o.split(','))
geoOverrides = geoOverrides.split("\n")
geoOverrides = _.map(geoOverrides, (o) -> o.split(','))

place = (location) ->
  override = _.find(overrides, (o) -> _.upperCase(o[0]) is _.upperCase(location.precinctCode) && o[4] is location.state)
  if override
    {
      locationName: override[1]
      line1: override[2]
      hours: location.hours
      city: override[3]
      state: location.state
      zip: override[5]
    }
  else
    location

geocode = (placeId) ->
  override = _.find(geoOverrides, (o) -> o[0] is placeId)
  if override
    {
      lat: parseFloat(override[1])
      lng: parseFloat(override[2])
    }

module.exports = 
  place: place
  geocode: geocode
