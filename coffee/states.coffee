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
    when keys.OTHER          then (if label.indexOf('Primary') isnt -1 then 'Primary' else 'Caucus')

verb = (state) ->
  if primaryType(state.fillKey, state.label) is 'Caucus' then 'caucus' else 'vote'

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
  AK:
    name:    'Alaska'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 03 26'
    date:    '2016 03 26'
    office:
      url:   'http://www.alaskademocrats.org/how-to-caucus'
      phone: '(907) 258-3050'
    regLink: 'http://voterregistration.alaska.gov/'
    chkLink: 'https://myvoterinformation.alaska.gov/'
  AS:
    name:    'American Samoa'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 03 01'
    date:    '2016 03 01'
    office:
      url:   'https://www.facebook.com/asdems'
      phone: '(684) 699-2828'
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
  CA:
    name:    'California'
    fillKey: keys.OTHER
    label:   'Semi-closed Primary'
    regDate: '2016 05 23'
    date:    '2016 06 07'
    office:
      url:   'http://www.sos.ca.gov/elections/'
      phone: '(916) 657-2166'
    regLink: 'http://registertovote.ca.gov/'
    chkLink: 'http://www.sos.ca.gov/elections/registration-status/'
  CO:
    name:    'Colorado'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 01 04'
    date:    '2016 03 01'
    office:
      url:   'http://www.sos.state.co.us/pubs/elections/main.html'
      phone: '(303) 894-2200'
  CT:
    name:    'Connecticut'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 04 21'
    date:    '2016 04 26'
    office:
      url:   'https://voterregistration.ct.gov/OLVR/welcome.do'
      phone: '(860) 509-6100'
    regLink: 'https://voterregistration.ct.gov/OLVR/welcome.do'
    chkLink: 'https://voterregistration.ct.gov/OLVR/welcome.do'
  DC:
    name:    'D.C.'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 05 16'
    date:    '2016 06 14'
    office:
      url:   'http://www.azsos.gov/elections'
      phone: '(602) 542-2228'
    regLink: 'https://www.vote4dc.com/Voter/Voter/CommonVoter'
    chkLink: 'https://www.dcboee.org/voter_info/reg_status/'
  DE:
    name:    'Delaware'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 04 02'
    date:    '2016 04 26'
    office:
      url:   'http://elections.delaware.gov/index.shtml'
      phone: '(302) 739-4277'
    regLink: 'https://ivote.de.gov/voterregterms.aspx'
    chkLink: 'https://ivote.de.gov/voterinfo.aspx'
  DA:
    name:    'Dems Abroad'
    fillKey: keys.OTHER
    label:   'Closed Primary'
    office:
      url:   'http://go.berniesanders.com/page/s/democrats-abroad'
  FL:
    name:    'Florida'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 02 16'
    date:    '2016 03 15'
    office:
      url:   'http://dos.myflorida.com/elections/'
      phone: '(866) 308.6739 '
    regLink: 'http://dos.myflorida.com/elections/for-voters/voter-registration/register-to-vote-or-update-your-information/'
    chkLink: 'http://registration.elections.myflorida.com/CheckVoterStatus'
    pollWgt: true
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
  GU:
    name:    'Guam'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 05 07'
    date:    '2016 05 07'
    office:
      url:   'https://www.facebook.com/guamdemocrats/'
      phone: '(671) 777-1482'
    regLink: 'http://gec.guam.gov/'
  HI:
    name:    'Hawaii'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 03 26'
    date:    '2016 03 26'
    office:
      url:   'http://hawaiidemocrats.org'
      phone: '(808) 596-2980'
    pollWgt: true
  ID:
    name:    'Idaho'
    fillKey: keys.OTHER
    label:   'Semi-open Primary'
    regDate: '2016 03 22'
    date:    '2016 03 22'
    office:
      url:   'http://idahodems.org/'
      phone: '(208) 336-1815'
    regLink: 'http://www.idahovotes.gov/voter_info.shtml'
    chkLink: 'http://www.idahovotes.gov/AbsenteeBallot/Default.aspx'
    pollWgt: true
  IL:
    name:    'Illinois'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 16'
    date:    '2016 03 15'
    office:
      url:   'https://www.elections.il.gov'
      phone: '(217) 782-4141'
    regLink: 'https://ova.elections.il.gov/'
    chkLink: 'https://www.elections.il.gov/votinginformation/registrationlookup.aspx'
    pollWgt: true
  IN:
    name:    'Indiana'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 04 04'
    date:    '2016 05 03'
    office:
      url:   'http://www.in.gov/sos/elections/'
      phone: '(317) 232-6531'
    regLink: 'https://indianavoters.in.gov/PublicSite/OVR/Introduction.aspx'
    chkLink: 'https://indianavoters.in.gov/PublicSite/Public/FT1/PublicLookupMain.aspx?Link=Registration'
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
  KS:
    name:    'Kansas'
    fillKey: keys.OTHER
    label:   'Semi-closed Caucus'
    regDate: '2016 03 05'
    date:    '2016 03 05'
    office:
      url:   'http://www.ksdp.org/'
      phone: '(785) 234-0425'
    regLink: 'https://www.kdor.org/voterregistration/'
    chkLink: 'https://myvoteinfo.voteks.org/VoterView/RegistrantSearch.do'
    pollWgt: true
  KY:
    name:    'Kentucky'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 04 18'
    date:    '2016 05 17'
    office:
      url:   'http://elect.ky.gov/'
      phone: '(502) 573-7100'
    regLink: 'http://elect.ky.gov/registertovote/pages/default.aspx'
    chkLink: 'https://vrsws.sos.ky.gov/VIC/'
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
  ME:
    name:    'Maine'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 02 19'
    date:    '2016 03 06'
    office:
      url:   'http://www.mainedems.org/page/2016-maine-caucuses'
      phone: '(207) 622-6233'
    regLink: 'http://www.maine.gov/sos/cec/elec/voter-info/voterguide.html'
    chkLink: 'http://www.maine.gov/portal/government/edemocracy/voter_lookup.php'
    pollWgt: true
  MD:
    name:    'Maryland'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 04 05'
    date:    '2016 04 26'
    office:
      url:   'http://www.elections.state.md.us'
      phone: '(410) 269-2840'
    regLink: 'https://voterservices.elections.maryland.gov/OnlineVoterRegistration/InstructionsStep1'
    chkLink: 'https://voterservices.elections.maryland.gov/VoterSearch'
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
  MI:
    name:    'Michigan'
    fillKey: keys.OTHER
    label:   'Semi-open Primary'
    regDate: '2016 02 08'
    date:    '2016 03 08'
    office:
      url:   'http://www.michigan.gov/sos/0,1607,7-127-1633---,00.html'
      phone: '(888) 767-6424'
    regLink: 'http://www.michigan.gov/sos/0,1607,7-127-1633_8716_8726_47669-175879--,00.html'
    chkLink: 'http://www.michigan.gov/vote'
    pollWgt: true
  MN:
    name:    'Minnesota'
    fillKey: keys.OPEN_CAUCUS
    date:    '2016 03 01'
    office:
      url:   'https://www.dfl.org/'
      phone: '(651) 293-1200'
  MS:
    name:    'Mississippi'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 06'
    date:    '2016 03 08'
    office:
      url:   'http://www.sos.ms.gov/elections-voting/Pages/default.aspx'
      phone: '(800) 829-6786'
    regLink: 'http://www.sos.ms.gov/elections-voting/pages/voter-registration-information.aspx'
    pollWgt: true
  MO:
    name:    'Missouri'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 17'
    date:    '2016 03 15'
    office:
      url:   'http://www.sos.mo.gov/elections/'
      phone: '(573) 751-2301'
    regLink: 'http://www.sos.mo.gov/elections/govotemissouri/register'
    chkLink: 'http://s1.sos.mo.gov/elections/voterlookup/'
  MT:
    name:    'Montana'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 06 07'
    date:    '2016 06 07'
    office:
      url:   'http://sos.mt.gov/elections/'
      phone: '(888) 884-8683'
    regLink: 'http://sos.mt.gov/ELECTIONS/Vote/index.asp'
    chkLink: 'https://app.mt.gov/cgi-bin/voterinfo/voterinfo.cgi'
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
    pollWgt: true
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
  NJ:
    name:    'New Jersey'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 05 17'
    date:    '2016 06 07'
    office:
      url:   'http://elections.nj.gov'
      phone: '(609) 292-3760'
    regLink: 'http://www.state.nj.us/state/elections/voting-information.html'
    chkLink: 'https://voter.njsvrs.com/PublicAccess/servlet/com.saber.publicaccess.control.PublicAccessNavigationServlet?USERPROCESS=PublicSearch'
  NM:
    name:    'New Mexico'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 05 10'
    date:    '2016 06 07'
    office:
      url:   'http://www.sos.state.nm.us/'
      phone: '(505) 827-3600'
    regLink: 'https://portal.sos.state.nm.us/OVR/(S(mzf1lpswqewv3tertpr5t44c))/WebPages/InstructionsStep1.aspx'
    chkLink: 'https://voterview.state.nm.us/VoterView/RegistrantSearch.do'
  NY:
    name:    'New York'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 03 25'
    date:    '2016 04 19'
    office:
      url:   'http://www.elections.ny.gov'
      phone: '(518) 474-6220'
    regLink: 'http://www.elections.ny.gov/VotingRegister.html'
    chkLink: 'https://voterlookup.elections.state.ny.us/VoterSearch.aspx'
  NC:
    name:    'North Carolina'
    fillKey: keys.OTHER
    label:   'Semi-closed Primary'
    regDate: '2016 02 19'
    date:    '2016 03 15'
    office:
      url:   'http://www.ncsbe.gov'
      phone: '(919) 733-7173'
    regLink: 'https://www.ncsbe.gov/registering-to-vote'
    chkLink: 'https://enr.ncsbe.gov/voter_search_public/'
    pollWgt: true
  ND:
    name:    'North Dakota'
    fillKey: keys.OPEN_CAUCUS
    date:    '2016 06 07'
    office:
      url:   'http://demnpl.com/'
      phone: '(701) 255-0460'
  NMI:
    name:    'Northern Mariana Islands'
    fillKey: keys.CLOSED_CAUCUS
    date:    '2016 03 12'
    office:
      url:   'https://www.facebook.com/CNMIDemocrats'
  OH:
    name:    'Ohio'
    fillKey: keys.OTHER
    label:   'Semi-open Primary'
    regDate: '2016 02 16'
    date:    '2016 03 15'
    office:
      url:   'http://www.sos.state.oh.us/elections.aspx'
      phone: '(614) 466-2585'
    regLink: 'http://www.sos.state.oh.us/elections/voters/register.aspx'
    chkLink: 'http://voterlookup.sos.state.oh.us/voterlookup.aspx'
    pollWgt: true
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
  OR:
    name:    'Oregon'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 04 26'
    date:    '2016 05 17'
    office:
      url:   'http://sos.oregon.gov/voting-elections/Pages/default.aspx'
      phone: '(503) 986-1518'
    regLink: 'https://secure.sos.state.or.us/orestar/vr/register.do'
    chkLink: 'https://secure.sos.state.or.us/orestar/vr/showVoterSearch.do?source=SOS'
  PA:
    name:    'Pennsylvania'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 03 28'
    date:    '2016 04 26'
    office:
      url:   'http://www.dos.pa.gov/VotingElections/Pages/default.aspx'
      phone: '(717) 787-5280'
    regLink: 'https://www.pavoterservices.state.pa.us/Pages/VoterRegistrationApplication.aspx'
    chkLink: 'https://www.pavoterservices.state.pa.us/Pages/VoterRegistrationStatus.aspx'
  RI:
    name:    'Rhode Island'
    fillKey: keys.OTHER
    label:   'Semi-closed Primary'
    regDate: '2016 03 27'
    date:    '2016 04 26'
    office:
      url:   'http://www.elections.state.ri.us/'
      phone: '(401) 222-2345'
    regLink: 'http://www.elections.state.ri.us/voting/registration.php'
    chkLink: 'http://www.sec.state.ri.us/vic/'
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
    pollWgt: true
  SD:
    name:    'South Dakota'
    fillKey: keys.OTHER
    label:   'Semi-closed Primary'
    regDate: '2016 05 23'
    date:    '2016 06 07'
    office:
      url:   'https://sdsos.gov/elections-voting/voting/default.aspx'
      phone: '(605) 773-3537'
    regLink: 'https://sdsos.gov/elections-voting/voting/register-to-vote/'
    chkLink: 'https://sos.sd.gov/Elections/VIPLogin.aspx'
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
  UT:
    name:    'Utah'
    fillKey: keys.OPEN_CAUCUS
    regDate: '2016 03 22'
    date:    '2016 03 22'
    office:
      url:   'http://utahdemocrats.org'
      phone: '(801) 328-1212'
    regLink: 'https://secure.utah.gov/voterreg/index.html'
    chkLink: 'http://vote.utah.gov/vote/menu/index'
    pollWgt: true
  VT:
    name:    'Vermont'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 24'
    date:    '2016 03 01'
    office:
      url:   'https://www.sec.state.vt.us/elections.aspx'
      phone: '(800) 439-8683'
    regLink: 'https://www.sec.state.vt.us/elections/voters/registration.aspx'
  VI:
    name:    'Virgin Islands'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 05 03'
    date:    '2016 06 04'
    office:
      url:   'https://www.facebook.com/democratsvi/'
    regLink: 'http://www.vivote.gov/content/register-vote'
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
  WA:
    name:    'Washington'
    fillKey: keys.OPEN_CAUCUS
    regDate: '2016 03 26'
    date:    '2016 03 26'
    office:
      url:   'http://www.wa-democrats.org/'
      phone: '(206) 583-0664'
    regLink: 'http://www.dol.wa.gov/driverslicense/voter.html'
    chkLink: 'https://www.sos.wa.gov/elections/myvote/'
    pollWgt: true
  WV:
    name:    'West Virginia'
    fillKey: keys.OTHER
    label:   'Semi-closed Primary'
    regDate: '2016 04 19'
    date:    '2016 05 10'
    office:
      url:   'http://www.sos.wv.gov/elections/pages/default.aspx'
      phone: '(866) 767-8683'
    regLink: 'https://ovr.sos.wv.gov/Register'
    chkLink: 'https://services.sos.wv.gov/Elections/Voter/AmIRegisteredToVote'
  WI:
    name:    'Wisconsin'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 04 01'
    date:    '2016 04 05'
    office:
      url:   'http://www.gab.wi.gov/'
      phone: '(608) 266-8005'
    regLink: 'https://myvote.wi.gov/'
    chkLink: 'https://myvote.wi.gov/Home.aspx'
  WY:
    name:    'Wyoming'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 03 25'
    date:    '2016 04 09'
    office:
      url:   'http://www.wyodems.org/2016-caucus-information'
      phone: '(307) 777-5860'
    regLink: 'http://soswy.state.wy.us/elections/registeringtovote.aspx'

module.exports =
  keys:        keys
  label:       label
  primaryType: primaryType
  verb:        verb
  states:      states
