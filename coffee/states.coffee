keys =
  OPEN_PRIMARY:   'OPEN_PRIMARY'
  OPEN_CAUCUS:    'OPEN_CAUCUS'
  CLOSED_PRIMARY: 'CLOSED_PRIMARY'
  CLOSED_CAUCUS:  'CLOSED_CAUCUS'
  UNAVAILABLE:    'UNAVAILABLE'
  OTHER:          'OTHER'

fills = {}
fills[keys.OPEN_PRIMARY]   = '#147FD7'
fills[keys.OPEN_CAUCUS]    = '#EA504E'
fills[keys.CLOSED_PRIMARY] = '#004CA4'
fills[keys.CLOSED_CAUCUS]  = '#B71D1B'
fills[keys.OTHER]          = '#20C361'
fills['defaultFill']       = '#999999'

label = (key) ->
  switch key
    when keys.OPEN_PRIMARY   then 'Open Primary'
    when keys.OPEN_CAUCUS    then 'Open Caucus'
    when keys.CLOSED_PRIMARY then 'Closed Primary'
    when keys.CLOSED_CAUCUS  then 'Closed Caucus'
    when keys.UNAVAILABLE    then 'Coming Soon'

primaryType = (key, label) ->
  switch key
    when keys.OPEN_PRIMARY   then 'Primary'
    when keys.CLOSED_PRIMARY then 'Primary'
    when keys.OPEN_CAUCUS    then 'Caucus'
    when keys.CLOSED_CAUCUS  then 'Caucus'
    when keys.OTHER          then if label.indexOf('Primary') isnt -1 then 'Primary' else 'Caucus'

states =
  AL:
    name:    'Alabama'
    fillKey: keys.UNAVAILABLE
  AK:
    name:    'Alaska'
    fillKey: keys.UNAVAILABLE
  AZ:
    name:    'Arizona'
    fillKey: keys.UNAVAILABLE
  AR:
    name:    'Arkansas'
    fillKey: keys.UNAVAILABLE
  CA:
    name:    'California'
    fillKey: keys.UNAVAILABLE
  CO:
    name:    'Colorado'
    fillKey: keys.UNAVAILABLE
  CT:
    name:    'Connecticut'
    fillKey: keys.UNAVAILABLE
  DE:
    name:    'Delaware'
    fillKey: keys.UNAVAILABLE
  FL:
    name:    'Florida'
    fillKey: keys.UNAVAILABLE
  GA:
    name:    'Georgia'
    fillKey: keys.UNAVAILABLE
  HI:
    name:    'Hawaii'
    fillKey: keys.UNAVAILABLE
  ID:
    name:    'Idaho'
    fillKey: keys.UNAVAILABLE
  IL:
    name:    'Illinois'
    fillKey: keys.UNAVAILABLE
  IN:
    name:    'Indiana'
    fillKey: keys.UNAVAILABLE
  IA:
    name:    'Iowa'
    fillKey: keys.OTHER
    label:   'Semi-open Caucus'
    regDate: 'Monday, February 1'
    date:    'Monday, February 1'
    office:
      url:   'http://sos.iowa.gov/elections/voterinformation/index.html'
      phone: '(515) 281-5204'
  KS:
    name:    'Kansas'
    fillKey: keys.UNAVAILABLE
  KY:
    name:    'Kentucky'
    fillKey: keys.UNAVAILABLE
  LA:
    name:    'Louisiana'
    fillKey: keys.UNAVAILABLE
  ME:
    name:    'Maine'
    fillKey: keys.UNAVAILABLE
  MD:
    name:    'Maryland'
    fillKey: keys.UNAVAILABLE
  MA:
    name:    'Massachusetts'
    fillKey: keys.UNAVAILABLE
  MI:
    name:    'Michigan'
    fillKey: keys.UNAVAILABLE
  MN:
    name:    'Minnesota'
    fillKey: keys.UNAVAILABLE
  MS:
    name:    'Mississippi'
    fillKey: keys.UNAVAILABLE
  MO:
    name:    'Missouri'
    fillKey: keys.UNAVAILABLE
  MT:
    name:    'Montana'
    fillKey: keys.UNAVAILABLE
  NE:
    name:    'Nebraska'
    fillKey: keys.UNAVAILABLE
  NV:
    name:    'Nevada'
    fillKey: keys.CLOSED_CAUCUS
    regDate: 'Saturday, February 20'
    date:    'Saturday, February 20'
    office:
      url:   'http://www.nvsos.gov/index.aspx?page=3'
      phone: '(775) 684-5705'
  NH:
    name:    'New Hampshire'
    fillKey: keys.OTHER
    label:   'Semi-open Primary'
    regDate: 'Saturday, January 30'
    date:    'Tuesday, February 9'
    office:
      url:   'http://sos.nh.gov/Elections.aspx'
      phone: '(603) 271-3242'
  NJ:
    name:    'New Jersey'
    fillKey: keys.UNAVAILABLE
  NM:
    name:    'New Mexico'
    fillKey: keys.UNAVAILABLE
  NY:
    name:    'New York'
    fillKey: keys.UNAVAILABLE
  NC:
    name:    'North Carolina'
    fillKey: keys.UNAVAILABLE
  ND:
    name:    'North Dakota'
    fillKey: keys.UNAVAILABLE
  OH:
    name:    'Ohio'
    fillKey: keys.UNAVAILABLE
  OK:
    name:    'Oklahoma'
    fillKey: keys.UNAVAILABLE
  OR:
    name:    'Oregon'
    fillKey: keys.UNAVAILABLE
  PA:
    name:    'Pennsylvania'
    fillKey: keys.UNAVAILABLE
  RI:
    name:    'Rhode Island'
    fillKey: keys.UNAVAILABLE
  SC:
    name:    'South Carolina'
    fillKey: keys.OPEN_PRIMARY
    regDate: 'Wednesday, January 27'
    date:    'Saturday, February 27'
    office:
      url:   'http://www.scvotes.org/'
      phone: '(803) 734-9060'
  SD:
    name:    'South Dakota'
    fillKey: keys.UNAVAILABLE
  TN:
    name:    'Tennessee'
    fillKey: keys.UNAVAILABLE
  TX:
    name:    'Texas'
    fillKey: keys.UNAVAILABLE
  UT:
    name:    'Utah'
    fillKey: keys.UNAVAILABLE
  VT:
    name:    'Vermont'
    fillKey: keys.UNAVAILABLE
  VA:
    name:    'Virginia'
    fillKey: keys.UNAVAILABLE
  WA:
    name:    'Washington'
    fillKey: keys.UNAVAILABLE
  WV:
    name:    'West Virginia'
    fillKey: keys.UNAVAILABLE
  WI:
    name:    'Wisconsin'
    fillKey: keys.UNAVAILABLE
  WY:
    name:    'Wyoming'
    fillKey: keys.UNAVAILABLE

for key, state of states
  state.svg = require("data/#{key.toLowerCase()}")
  try
    state.component = require("components/states/#{key.toLowerCase()}")
  

module.exports =
  keys:        keys
  fills:       fills
  label:       label
  primaryType: primaryType
  states:      states
