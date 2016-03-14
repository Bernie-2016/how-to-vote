import _         from 'lodash'
import overrides from 'data/overrides'

overrides = overrides.split("\n")
overrides = _.map(overrides, (o) -> o.split(','))

module.exports = (location) ->
  override = _.find(overrides, (o) -> o[0] is location.precinctCode && o[4] is location.state)
  if override
    {
      locationName: override[1]
      line1: override[2]
      hours: location.hours
      city: override[3]
      state: location.state
      zip: override[4]
    }
  else
    location
