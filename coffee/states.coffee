keys =
  OPEN_PRIMARY:   'OPEN_PRIMARY'
  OPEN_CAUCUS:    'OPEN_CAUCUS'
  CLOSED_PRIMARY: 'CLOSED_PRIMARY'
  CLOSED_CAUCUS:  'CLOSED_CAUCUS'
  UNAVAILABLE:    'UNAVAILABLE'
  OTHER:          'OTHER'

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
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 15'
    date:    '2016 03 01'
    office:
      url:   'http://www.alabamavotes.gov/'
      phone: '(334) 242-7210'
    regLink: 'https://www.alabamavotes.gov/olvr/default.aspx'
    chkLink: 'https://myinfo.alabamavotes.gov/VoterView/RegistrantSearch.do'
    dtlName: 'open primaries'
    byline:  'Alabamians can vote for Bernie Sanders regardless of their registered party.'
  AK:
    name:    'Alaska'
    fillKey: keys.UNAVAILABLE
  AZ:
    name:    'Arizona'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 02 22'
    date:    '2016 03 22'
    office:
      url:   'http://www.azsos.gov/elections'
      phone: '(602) 542-2228'
    regLink: 'http://servicearizona.com/voterRegistration'
    chkLink: 'https://voter.azsos.gov/VoterView/RegistrantSearch.do'
    dtlName: 'closed primaries'
    byline:  'Arizonans must register as a Democrat to vote for Bernie!'
  AR:
    name:    'Arkansas'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 01'
    date:    '2016 03 01'
    office:
      url:   'http://www.sos.arkansas.gov/elections/Pages/default.aspx'
      phone: '(501) 682-1010'
    regLink: 'http://www.sos.arkansas.gov/elections/pages/voterregistration.aspx'
    chkLink: 'https://www.voterview.ar-nova.org/VoterView/RegistrantSearch.do'
    dtlName: 'open primaries'
    byline:  'Arkansans can vote for Bernie Sanders regardless of their registered party.'
  CA:
    name:    'California'
    fillKey: keys.UNAVAILABLE
  CO:
    name:    'Colorado'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 01 04'
    date:    '2016 03 01'
    office:
      url:   'http://www.sos.state.co.us/pubs/elections/main.html'
      phone: '(303) 894-2200'
    dtlName: 'closed caucuses'
    byline:  'Coloradans must register as a Democrat to vote for Bernie!'
    custom:  true
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
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 01'
    date:    '2016 03 01'
    office:
      url:   'http://sos.ga.gov/index.php/?section=elections'
      phone: '(404) 656-2871'
    regLink: 'https://registertovote.sos.ga.gov/GAOLVR/welcome.do#no-back-button'
    chkLink: 'https://www.mvp.sos.ga.gov/MVP/mvp.do'
    dtlName: 'open primaries'
    byline:  'Georgians can vote for Bernie Sanders regardless of their registered party.'
    custom:  true
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
    regDate: '2016 02 01'
    date:    '2016 02 01'
    office:
      url:   'http://sos.iowa.gov/elections/voterinformation/index.html'
      phone: '(515) 281-5204'
    regLink: 'https://mymvd.iowadot.gov/VoterRegistration'
    chkLink: 'https://sos.iowa.gov/elections/voterreg/regtovote/search.aspx'
    dtlName: 'semi-open caucuses'
    byline:  'Iowans registered as a Republican cannot vote for Bernie Sanders! However, Iowans may change party affiliation on caucus day.'
    sameDay: 'Iowa has Same-Day Registration which allows you to register to vote at the caucuses on Mon, February 1.'
  KS:
    name:    'Kansas'
    fillKey: keys.OTHER
    label:   'Semi-closed Caucus'
    regDate: '2016 02 13'
    date:    '2016 03 05'
    office:
      url:   'http://www.voteks.org'
      phone: '(800) 262-8683'
    regLink: 'https://www.kdor.org/voterregistration/'
    chkLink: 'https://myvoteinfo.voteks.org/VoterView/RegistrantSearch.do'
    dtlName: 'semi-closed caucuses'
    byline:  'Kansans must be affiliated with the Democratic Party to vote for Bernie!'
  KY:
    name:    'Kentucky'
    fillKey: keys.UNAVAILABLE
  LA:
    name:    'Louisiana'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 02 03'
    date:    '2016 03 05'
    office:
      url:   'http://www.sos.la.gov/ElectionsAndVoting/Pages/default.aspx'
      phone: '(225) 922-0900'
    regLink: 'http://www.sos.la.gov/ElectionsAndVoting/Pages/OnlineVoterRegistration.aspx'
    chkLink: 'https://voterportal.sos.la.gov/'
    dtlName: 'closed primaries'
    byline:  'Louisianans must register as a Democrat to vote for Bernie!'
    custom:  true
  ME:
    name:    'Maine'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 02 19'
    date:    '2016 03 06'
    office:
      url:   'http://www.maine.gov/sos/cec/elec/'
      phone: '(207) 624-7736'
    regLink: 'http://www.maine.gov/sos/cec/elec/voter-info/voterguide.html'
    chkLink: 'http://www.maine.gov/portal/government/edemocracy/voter_lookup.php'
    dtlName: 'closed caucuses'
    byline:  'Mainers must register as a Democrat to vote for Bernie!'
    sameDay: 'Maine has Same-Day Registration which allows you to register to vote at the caucuses on Sun, March 6 for unregistered and unaffiliated voters. Previously registered voters must update their affiliation to Democrat by Fri, Feb 19.'
  MD:
    name:    'Maryland'
    fillKey: keys.UNAVAILABLE
  MA:
    name:    'Massachusetts'
    fillKey: keys.OTHER
    label:   'Semi-closed Primary'
    regDate: '2016 02 10'
    date:    '2016 03 01'
    office:
      url:   'http://www.sec.state.ma.us/ele/'
      phone: '(617) 727-2828'
    regLink: 'https://www.sec.state.ma.us/OVR/'
    chkLink: 'http://www.sec.state.ma.us/VoterRegistrationSearch/MyVoterRegStatus.aspx'
    dtlName: 'semi-closed primaries'
    byline:  'Bay Staters must register as a Democrat or undeclared to vote for Bernie!'
  MI:
    name:    'Michigan'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 08'
    date:    '2016 03 08'
    office:
      url:   'http://www.michigan.gov/sos/0,1607,7-127-1633---,00.html'
      phone: '(808) 767-6424'
    regLink: 'http://www.michigan.gov/sos/0,1607,7-127-1633_8716_8726_47669-175879--,00.html'
    chkLink: 'http://www.michigan.gov/vote'
    dtlName: 'open primaries'
    byline:  'Michiganders can vote for Bernie Sanders regardless of their registered party.'
    custom:  true
  MN:
    name:    'Minnesota'
    fillKey: keys.OPEN_CAUCUS
    regDate: '2016 03 01'
    date:    '2016 03 01'
    office:
      url:   'http://mnvotesinfo.sos.state.mn.us/'
      phone: '(651) 215-1440'
    regLink: 'https://mnvotes.sos.state.mn.us/VoterRegistration/VoterRegistrationStep1.aspx'
    chkLink: 'https://mnvotes.sos.state.mn.us/VoterStatus.aspx'
    dtlName: 'open caucuses'
    byline:  'Minnesotans can vote for Bernie Sanders regardless of their registered party.'
    sameDay: 'Minnesota has Same-Day Registration which allows you to register to vote at the caucuses on Tue, March 1.'
    custom:  true
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
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 03 05'
    date:    '2016 03 05'
    office:
      url:   'http://www.sos.ne.gov/elec/'
      phone: '(402) 471-2555'
    regLink: 'https://www.nebraska.gov/apps-sos-voter-registration/'
    chkLink: 'https://www.votercheck.necvr.ne.gov/VoterView/RegistrantSearch.do'
    dtlName: 'closed caucuses'
    byline:  'Nebraskans must be registered Democrats to vote for Bernie Sanders! However, unaffiliated Nebraskans or those registered as Republicans can register to vote or change their party affiliation prior to or at the caucus.'
    sameDay: 'Nebraska has Same-Day Registration which allows you to register to vote at the caucuses on Sat, March 5.'
  NV:
    name:    'Nevada'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 02 20'
    date:    '2016 02 20'
    office:
      url:   'http://www.nvsos.gov/index.aspx?page=3'
      phone: '(775) 684-5705'
    regLink: 'https://nvsos.gov/sosvoterservices/Registration/step1.aspx'
    chkLink: 'https://nvsos.gov/votersearch/'
    dtlName: 'closed caucuses'
    byline:  'Nevadans must register as a Democrat to vote for Bernie! However Nevadans may register/update registration to Democrat on the day of the caucus.'
    sameDay: 'Nevada has Same-Day Registration which allows you to register to vote at the caucuses on Sat, February 20.'
    custom:  true
  NH:
    name:    'New Hampshire'
    fillKey: keys.OTHER
    label:   'Semi-open Primary'
    regDate: '2016 01 30'
    date:    '2016 02 09'
    office:
      url:   'http://sos.nh.gov/Elections.aspx'
      phone: '(603) 271-3242'
    regLink: 'http://sos.nh.gov/nhsos_content.aspx?id=26190'
    chkLink: 'http://sos.nh.gov/VoteInforLook.aspx'
    dtlName: 'semi-open primaries'
    byline:  'New Hampshirites must register as Democrat or undeclared to vote for Bernie! However, new and undeclared voters are able to register and change party at election ballots.'
    sameDay: 'New Hampshire has Same-Day Registration which allows you to register to vote at the primaries on Tue, February 9 if you are not currently registered to vote or are not affiliated with a party'
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
    fillKey: keys.OTHER
    label:   'Semi-closed Primary'
    regDate: '2016 02 05'
    date:    '2016 03 01'
    office:
      url:   'https://www.ok.gov/elections/'
      phone: '(405) 521-2391'
    regLink: 'https://www.ok.gov/elections/documents/Oklahoma%20Voter%20Registration%20Application%20form%20v4-20%20SEB%20web.pdf'
    chkLink: 'https://services.okelections.us/voterSearch.aspx'
    dtlName: 'semi-closed primaries'
    byline:  'Oklahomans must be registered as a Democrat or independent to vote for Bernie Sanders!'
    custom:  true
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
    regDate: '2016 01 27'
    date:    '2016 02 27'
    office:
      url:   'http://www.scvotes.org/'
      phone: '(803) 734-9060'
    regLink: 'https://info.scvotes.sc.gov/eng/ovr/start.aspx'
    chkLink: 'https://info.scvotes.sc.gov/eng/voterinquiry/VoterInformationRequest.aspx?PageMode=VoterInfo'
    dtlName: 'open primaries'
    byline:  'South Carolinians can vote for Bernie Sanders regardless of their registered party.'
  SD:
    name:    'South Dakota'
    fillKey: keys.UNAVAILABLE
  TN:
    name:    'Tennessee'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 01'
    date:    '2016 03 01'
    office:
      url:   'http://sos.tn.gov/elections'
      phone: '(615) 741-7956'
    regLink: 'http://sos.tn.gov/products/elections/register-vote-0'
    chkLink: 'https://tnmap.tn.gov/voterlookup/'
    dtlName: 'open primaries'
    byline:  'Tennesseans can vote for Bernie Sanders regardless of their registered party.'
    custom:  true
  TX:
    name:    'Texas'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 01'
    date:    '2016 03 01'
    office:
      url:   'http://www.sos.state.tx.us/elections/'
      phone: '(512) 463-5650'
    regLink: 'http://www.votetexas.gov/register-to-vote/register-to-vote/'
    chkLink: 'https://teamrv-mvp.sos.texas.gov/MVP/languageChange.do'
    dtlName: 'open primaries'
    byline:  'Texans can vote for Bernie Sanders regardless of their registered party.'
  UT:
    name:    'Utah'
    fillKey: keys.UNAVAILABLE
  VT:
    name:    'Vermont'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 24'
    date:    '2016 03 01'
    office:
      url:   'https://www.sec.state.vt.us/elections.aspx'
      phone: '(800) 439-8683'
    regLink: 'https://www.sec.state.vt.us/elections/voters/registration.aspx'
    dtlName: 'open primaries'
    byline:  'Vermonters can vote for Bernie Sanders regardless of their registered party.'
    custom:  true
  VA:
    name:    'Virginia'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 08'
    date:    '2016 03 01'
    office:
      url:   'http://elections.virginia.gov/'
      phone: '(804) 864-8901'
    regLink: 'https://vote.elections.virginia.gov/Registration/Eligibility'
    chkLink: 'https://vote.elections.virginia.gov/VoterInformation'
    dtlName: 'open primaries'
    byline:  'all Virginians can request a Democratic ballot to vote for Bernie Sanders.'
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

module.exports =
  keys:        keys
  label:       label
  primaryType: primaryType
  states:      states
