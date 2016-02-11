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
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 03 26'
    date:    '2016 03 26'
    office:
      url:   'http://www.alaskademocrats.org/how-to-caucus'
      phone: '(907) 258-3050'
    regLink: 'http://voterregistration.alaska.gov/'
    chkLink: 'https://webapp.state.ak.us/electionsLookup/JSP/VoterLookupMain.jsp'
    dtlName: 'closed caucuses'
    byline:  'Alaskans must register as a Democrat to vote for Bernie! However, Alaskans may update their party affiliation to Democrat on the day of the caucus.'
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
    early:   "Arizonans can vote for Bernie Sanders before the March 22 presidential preference election, either in person or by mail-in absentee ballot, beginning February 24, 2016. Check with your <a href='http://www.azsos.gov/elections/voting-election/contact-information-county-election-officials'>local elections office</a> to learn more about early in-person or mail-in voting."
    idReq:   "Arizonans must present a photo ID and proof of current address in order to vote. Learn more about acceptable ID documents <a href='http://www.azsos.gov/elections/voting-election'>here</a>."
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
    fillKey: keys.OTHER
    label:   'Semi-closed Primary'
    regDate: '2016 05 23'
    date:    '2016 06 07'
    office:
      url:   'http://www.sos.ca.gov/elections/'
      phone: '(916) 657-2166'
    regLink: 'http://registertovote.ca.gov/'
    chkLink: 'http://www.sos.ca.gov/elections/registration-status/'
    dtlName: 'semi-closed primaries'
    byline:  'Californians must register as a Democrat or independent ("no party preference") to vote for Bernie!'
    early:   "Many counties in California will hold early voting for the Democratic primary between May 9 and June 6, 2016. Contact your <a href='http://www.sos.ca.gov/elections/voting-resources/county-elections-offices/'>county elections office</a> to learn more about early voting in your county. You can request a mail-in absentee ballot by submitting <a href='http://elections.cdn.sos.ca.gov/vote-by-mail/pdf/fill-in-vote-by-mail-app-instruct.pdf'>this form</a> before May 31, 2016. You can also file an emergency absentee ballot in person at your local <a href='http://www.sos.ca.gov/elections/voting-resources/county-elections-offices/'>county elections office</a> anytime between June 1 and 7, 2016."
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
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 04 21'
    date:    '2016 04 26'
    office:
      url:   'https://voterregistration.ct.gov/OLVR/welcome.do'
      phone: '(860) 509-6100'
    regLink: 'https://voterregistration.ct.gov/OLVR/welcome.do'
    chkLink: 'https://voterregistration.ct.gov/OLVR/welcome.do'
    dtlName: 'closed primaries'
    byline:  'Connecticuters must register as a Democrat to vote for Bernie!'
    regInfo: "If you are a new voter registering to vote by mail, your registration form must be postmarked by April 21, 2016. If you want to change your party enrollment from unaffiliated to Democratic, your registration form must be received by your municipal registrar of vote by that date. (Unfortunately, if you are enrolled in a different political party, the deadline to change your registration to Democratric has already passed.) You can register to vote or change your party affiliation from unaffiliated to Democratic in person at your local town hall until noon on April 25, 2016."
    idReq:   "If you vote in person and have never voted in a federal election in your municipality, you might be asked to present a photo ID, utility bill, bank statement, government document, or paycheck that shows your address."
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
    dtlName: 'closed primaries'
    byline:  'Delawareans must register as a Democrat to vote for Bernie!'
    regInfo: 'If you are already registered to vote, the deadline to change your affiliation to Democratic is February 26, 2016.'
  FL:
    name:    'Florida'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 02 16'
    date:    '2016 03 15'
    office:
      url:   'http://dos.myflorida.com/elections/'
      phone: '(866) 308.6739 '
    regLink: 'http://dos.myflorida.com/elections/for-voters/voter-registration/register-to-vote-or-update-your-information/'
    chkLink: 'http://dos.myflorida.com/elections/for-voters/check-your-voter-status-and-polling-place/'
    dtlName: 'closed primaries'
    byline:  'Floridans must register as a Democrat to vote for Bernie!'
    early:   "You can participate in early in-person voting for the Florida Democratic Primary between March 5 and 12, 2016. You can find early voting locations and times <a href='http://dos.myflorida.com/elections/for-voters/voting/early-voting/'>here</a>."
    idReq:   "Florida requires people voting in person to present a valid photo ID. Acceptable IDs include a Florida driver's license, a Florida Department of Highway Safety and Motor Vehicle identification card, a U.S. Passport, a debit or credit card with a photograph, a military photo ID, a student photo ID, a retirement center ID, a neighborhood association ID, or a public assistance ID. If your photo ID does not contain a signature you will be asked to present another ID with a signature."
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
    early:   "Advanced voting for the Georgia democratic primary takes place between February 8 and February 26, during normal business hours, and on Saturday February 20, from 9:00 A.M. to 4:00 P.M. Georgia also lets any voter vote by absentee ballot. You can apply for an absentee ballot <a href='http://sos.ga.gov/admin/uploads/absentee_ballot_app_201431.pdf'>here</a>."
    idReq:   "Georgia requires you to present a photo identification in order to vote in person. Acceptable IDs include valid state or federal photo IDs, including a free photo ID card issued by your county registrar's office or the Georgia Department of Driver Services, a Georgia Driver's License (current or expired), employee photo IDs from any federal, state, or local agency, a valid U.S. passport, a valid U.S. military photo ID, or a valid tribal photo ID."
  HI:
    name:    'Hawaii'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 03 26'
    date:    '2016 03 26'
    office:
      url:   'http://hawaiidemocrats.org'
      phone: '(808) 596-2980'
    regLink: 'http://elections.hawaii.gov/frequently-asked-questions/online-voter-registration/'
    dtlName: 'closed caucuses'
    byline:  'Hawaiians must register as a Democrat to vote for Bernie! However, Hawaiians may update their party affiliation to Democrat on the day of the caucus.'
    sameDay: 'Hawaii has Same-Day Registration which allows you to register to vote at the caucuses on Sat, March 26.'
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
    dtlName: 'semi-open primaries'
    byline:  "Idaho's Democratic Party Caucuses are open to all Idahoans, regardless of political affiliation, except those who participate in Idaho's Republican party primary on March 8, 2016."
    sameDay: 'Idaho has Same-Day Registration which allows you to register to vote at the caucuses on Tue, March 22.'
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
    dtlName: 'open primaries'
    byline:  'Illinoisians can vote for Bernie Sanders regardless of their registered party.'
    regInfo: "The regular registration deadline for the Illinois Democratic Primary is on February 16, 2016, but grace period registration continues at select sites until election day. Click <a href='https://www.elections.il.gov/Downloads/ElectionInformation/PDF/GracePeriodReg.pdf'>here</a> to learn more about grace period registration locations and hours."
    early:   "Early voting in the Illinois primary takes place between February 4 and March 14, 2016.  You can learn more about early voting locations and hours <a href='http://www.elections.state.il.us/votinginformation/earlyvotinglocations.aspx'>here</a>. Illinois also lets residents request mail-in absentee ballots until one day before the primary election. Learn more about mail-in voting in Illinois <a href='http://www.elections.state.il.us/downloads/electioninformation/pdf/votebymail.pdf'>here</a>."
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
    dtlName: 'open primaries'
    byline:  'Indianans can vote for Bernie Sanders regardless of their registered party.'
    early:   "Early in-person voting for the Indiana Democratic Primary takes place at your local circuit court clerk's <a href='http://www.in.gov/judiciary/2794.htm'>office</a>; early voting begins April 5, 2016 and ends at noon on May 2, 2016. Contact your <a href='http://www.in.gov/judiciary/2794.htm'>county clerk</a> for more information about early voting hours."
    idReq:   "Indiana requires you to present a photo identification in order to vote in person. To learn more about what types of IDs are acceptable, click here. <http://www.in.gov/sos/elections/2401.htm>"
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
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 04 18'
    date:    '2016 05 17'
    office:
      url:   'http://elect.ky.gov/'
      phone: '(502) 573-7100'
    regLink: 'http://elect.ky.gov/registertovote/pages/default.aspx'
    chkLink: 'https://vrsws.sos.ky.gov/VIC/'
    dtlName: 'closed primaries'
    byline:  'Kentuckians must register as a Democrat to vote for Bernie!'
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
    early:   "You can participate in early voting for the Louisiana Democratic Primary at designated locations in your parish between February 20 and 27, 2016. Find your closest early voting location <a href='https://voterportal.sos.la.gov/EarlyVoting'>here</a>."
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
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 04 05'
    date:    '2016 04 26'
    office:
      url:   'http://www.elections.state.md.us'
      phone: '(410) 269-2840'
    regLink: 'https://voterservices.elections.maryland.gov/OnlineVoterRegistration/InstructionsStep1'
    chkLink: 'https://voterservices.elections.maryland.gov/VoterSearch'
    dtlName: 'closed primaries'
    byline:  'Marylanders must register as a Democrat to vote for Bernie!'
    early:   "Early voting for the Maryland Democratic Primary takes place between April 14 and 21, 2016. Find an early voting location near you <a href='http://www.elections.state.md.us/voting/early_voting.html'>here</a>. The deadline to request for an absentee ballot to be delivered to you by mail is April 19, 2016. You can request for an absentee ballot to be delivered to you through the Internet until April 22, 2016, or you can pick up an absentee ballot in person at your local <a href='http://www.elections.state.md.us/about/county_boards.html'>board of elections</a> until election day."
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
    idReq:   "Michigan voters must provide a photo ID at the polls, or sign an affidavit attesting that they do not possess a photo ID.  Acceptable Photo IDs include a valid driver's license, a federal or state-issued photo ID, a U.S. passport, a military photo ID, a high school or college photo ID, or a tribal photo ID."
  MN:
    name:    'Minnesota'
    fillKey: keys.OPEN_CAUCUS
    date:    '2016 03 01'
    office:
      url:   'http://mnvotesinfo.sos.state.mn.us/'
      phone: '(651) 215-1440'
    more:    'http://mnvotesinfo.sos.state.mn.us/'
    dtlName: 'open caucuses'
    byline:  'Minnesotans can vote for Bernie Sanders regardless of their registered party.'
    sameDay: 'Minnesota has Same-Day Registration which allows you to register to vote at the caucuses on Tue, March 1.'
    custom:  true
  MS:
    name:    'Mississippi'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 06'
    date:    '2016 03 08'
    office:
      url:   'http://www.sos.ms.gov/elections-voting/Pages/default.aspx'
      phone: '(800) 829-6786'
    regLink: 'http://www.sos.ms.gov/elections-voting/pages/voter-registration-information.aspx'
    dtlName: 'open primaries'
    byline:  'Missippians can vote for Bernie Sanders regardless of their registered party.'
    idReq:   "Mississippi requires you to present a valid photo ID in order to vote in person.  Acceptable forms of photo ID include driver's licenses, photo IDs issued by any branch of the United States government or any state government, a U.S. passport, a government employee photo ID, a firearms license, a student ID from an accredited Mississippi college or junior college, a U.S. military photo ID, a tribal photo ID, or a Mississippi voter identification card."
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
    dtlName: 'open primaries'
    byline:  'Missourians can vote for Bernie Sanders regardless of their registered party.'
    idReq:   "Missouri requires you to present identification in order to vote in person.  Acceptable forms of identification include any ID issued by a federal, state of Missouri, or local agency, any ID issued by an institution of higher education, a copy of a current utility bill, bank statement, paycheck, government check, any other government document that contains your name and address, or a driver's license or state ID card from another state."
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
    dtlName: 'open primaries'
    byline:  'Montanans can vote for Bernie Sanders regardless of their registered party.'
    regInfo: "Montanans can <a href='http://sos.mt.gov/ELECTIONS/Officials/Forms/documents/Voter-Registration-Application.pdf'>register</a> to vote by mail until May 9, 2016. After that date, you can register to vote in person at your <a href='http://sos.mt.gov/elections/Forms/elections/electionadministrators.pdf'>county elections office</a>."
    early:   "Early voting for the Montana Democratic Primary takes place between May 9 and June 6, 2016. To participate in early voting, you can request and submit an absentee ballot by <a href='http://sos.mt.gov/elections/Officials/Forms/documents/Application-for-Absentee-Ballot.pdf'>mail</a> or in person at your <a href='http://sos.mt.gov/elections/Forms/elections/electionadministrators.pdf'>county elections office</a>."
    sameDay: 'Montana has Same-Day Registration which allows you to register to vote at the primaries on Tue, June 7.'
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
    byline:  'Nevadans must register as a Democrat to vote for Bernie! However, Nevadans may register/update registration to Democrat on the day of the caucus.'
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
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 05 17'
    date:    '2016 06 07'
    office:
      url:   'http://elections.nj.gov'
      phone: '(609) 292-3760'
    regLink: 'http://www.state.nj.us/state/elections/voting-information.html'
    chkLink: 'https://voter.njsvrs.com/PublicAccess/servlet/com.saber.publicaccess.control.PublicAccessNavigationServlet?USERPROCESS=PublicSearch'
    dtlName: 'closed primaries'
    byline:  'New Jerseyans must register as a Democrat to vote for Bernie! However, unaffiliated voters can declare their affiliation with the Democratic Party any time up to (and including) election day.'
    regInfo: "New Jerseyites registered with another political party must <a href='http://www.state.nj.us/state/elections/voting-information-party-declaration-forms.html'>change their affiliation</a> by April 13, 2016 in order to participate in the Democratic Party Primary."
    early:   "If you can't make it to the polls on primary day, you can apply for a mail-in ballot until May 31, 2016. Find mail-in ballot applications for your county <a href='http://www.state.nj.us/state/elections/voting-information.html'>here</a>. If you don't apply for a mail-in ballot by the May 31 deadline, you can apply for (and submit) an absentee ballot in person at your local county clerk's <a href='http://www.state.nj.us/state/elections/voting-information-local-officials.html'>office</a> until June 6, 2016 at 3 P.M."
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
    dtlName: 'closed primaries'
    byline:  'New Mexicans must register as a Democrat to vote for Bernie!'
    early:   "If you can't make it to the polls on primary day, you can submit an absentee ballot by mail, or you can request and submit an absentee ballot in person at your county clerk's office beginning on May 10, 2016. Your county clerk will also designate locations for early voting May 21 and June 4, 2016.  Contact your local county clerk's <a href='http://www.sos.state.nm.us/Voter_Information/County_Clerk_Information.aspx'>office</a> to learn more about early voting hours and locations near you."
  NY:
    name:    'New York'
    fillKey: keys.CLOSED_PRIMARY
    regDate: '2016 03 25'
    date:    '2016 04 19'
    office:
      url:   'http://www.elections.ny.gov'
      phone: '(518) 474-6220'
    regLink: 'http://www.elections.ny.gov/VotingRegister.html'
    chkLink: 'https://voterlookup.elections.state.ny.us/ExceptionPage.aspx?aspxerrorpath=/VoterSearch.aspx'
    dtlName: 'closed primaries'
    byline:  'New Yorkers must register as a Democrat to vote for Bernie!'
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
    dtlName: 'semi-closed primaries'
    byline:  'North Carolinians must be registered as a Democrat or independent to vote for Bernie Sanders!'
    early:   "North Carolina has one-stop early voting and same-day registration at select locations between March 3 and 12, 2016. Contact your <a href='https://enr.ncsbe.gov/cbesearch/'>local elections board</a> to find an early voting location near you. To take advantage of same-day registration, you must bring official proof of a current residential address in your county, such as a valid photo ID or an official document showing your address (e.g., a bank statement or utility bill) no more than two months old. Electronic versions of such documents are acceptable if they come from the original source (e.g., the bank or utility) and show your name and current address. Any registered North Carolina voter can also request a mail-in absentee ballot.  To learn more about absentee voting, click <a href='https://www.ncsbe.gov/Voting/Absentee-Voting'>here</a>."
    idReq:   "North Carolina requires you to present photo identification in order to vote in person.  Click here <http://voterid.nc.gov/photo-id.html> for more information about what kinds of photo IDs you can use to vote."
  ND:
    name:    'North Dakota'
    fillKey: keys.OPEN_CAUCUS
    date:    '2016 06 07'
    office:
      url:   'http://demnpl.com/'
      phone: '(701) 255-0460'
    dtlName: 'open caucuses'
    more:    'http://demnpl.com/'
    byline:  'Any North Dakotan that intends to support the Democratic Party in the 2016 election can vote for Bernie Sanders, regardless of registration status.'
  OH:
    name:    'Ohio'
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 02 16'
    date:    '2016 03 15'
    office:
      url:   'http://www.sos.state.oh.us/elections.aspx'
      phone: '(614) 466-2585'
    regLink: 'http://www.sos.state.oh.us/elections/voters/register.aspx'
    chkLink: 'http://voterlookup.sos.state.oh.us/voterlookup.aspx'
    dtlName: 'open primaries'
    byline:  'Ohioans can vote for Bernie Sanders regardless of their registered party.'
    early:   "Ohioans can vote before the March 15 primary, either in person or by mail-in absentee ballot, beginning February 17, 2016.  Check with your <a href='http://www.sos.state.oh.us/sos/elections/electionsofficials/boeDirectory.aspx'>local elections board</a> to learn more about early in-person voting times and locations. Click <a href='http://www.sos.state.oh.us/SOS/elections/Voters/votingAbsenteeByMail.aspx'>here</a> to request a mail-in absentee ballot."
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
    early:   "Early voting for the Oklahoma Democratic primary takes place on Thursday, February 25 and Friday, February 26, from 8 A.M. to 6 P.M., and on Saturday, February 27, from 9 A.M. to 2 P.M.  Oklahoma also lets all residents vote by absentee ballot. You can apply for an absentee ballot <a href='https://www.ok.gov/elections/documents/Oklahoma%20Absentee%20Ballot%20Application%20-%20fillable.pdf'>here</a> until February 24, 2016."
    idReq:   "Oklahoma requires you to present a photo identification in order to vote in person. Acceptable IDs must be issued by the U.S. government, the State of Oklahoma, or a federally recognized tribal government, must contain your name and photograph, and must be valid (i.e., unexpired) on the date of the primary."
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
    dtlName: 'closed primaries'
    byline:  'Oregonians must register as a Democrat to vote for Bernie!'
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
    dtlName: 'closed primaries'
    byline:  'Pennsylvanians must register as a Democrat to vote for Bernie!'
    idReq:   "If the Democratic primary is your first time voting in Pennsylvania, you might be asked to provide some form of identification, such as a Photo ID, or a current bank or utility statement. To learn more about documents that satisfy the ID requirement for first-time Pennsylvania voters, click <a href='http://www.padems.com/voterid/FirstTimeVoters'>here</a>."
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
    dtlName: 'semi-closed primaries'
    byline:  'Rhode Islanders must register as a Democrat or undeclared to vote for Bernie!'
    regInfo: "Rhode Islanders registered to vote as members of another party or who have voted in another party's primary cannot vote for Bernie Sanders in the Democratic primary unless they re-registered as Democrats by January 27, 2016.  However, Rhode Islanders who are unaffiliated with any political party and have not previously voted in another party's primary can vote in the Democratic primary."
    early:   "If you think you might not be able to vote in person at your local polling place, you can apply for a mail-in absentee ballot by submitting <a href='http://sos.ri.gov/assets/downloads/documents/elections-and-voting/mailballots/Mail-Ballot-Application-Democrat-English.pdf'>this form</a> to your local board of canvassers by April 5, 2016. If you miss that deadline, you can apply for a mail-in absentee ballot at your local board of canvassers until April 25, 2016. Your mail-in ballot must be received by the Board of Elections by 8 P.M. on April 26, 2016."
    idReq:   "Rhode Island generally requires you to present photo identification in order to vote in person. However, if you don't have an acceptable photo ID, you can present an alternative form of identification, such as a utility bill or student ID. To learn more about what types of IDs and documents satisfy Rhode Island's requirements, click <a href='http://sos.ri.gov/divisions/elections/Voters/voter-id'>here</a>."
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
    fillKey: keys.OTHER
    label:   'Semi-closed Primary'
    regDate: '2016 05 23'
    date:    '2016 06 07'
    office:
      url:   'http://www.scvotes.org/'
      phone: '(803) 734-9060'
    regLink: 'https://sdsos.gov/elections-voting/voting/register-to-vote/'
    chkLink: 'https://sos.sd.gov/Elections/VIPLogin.aspx'
    dtlName: 'semi-closed primaries'
    byline:  'South Dakotans must be registered as a Democrat or independent to vote for Bernie Sanders!'
    early:   "If you can't make it to the polls on primary day, you can submit an absentee ballot by <a href='https://sdsos.gov/elections-voting/voting/absentee-voting.aspx'>mail</a>, or or you can request and submit an absentee ballot in person at your county auditor's <a href='https://sdsos.gov/contact-us/county-auditors.aspx'>office</a> beginning on April 22, 2016."
    idReq:   "South Dakota asks that you present a photo identification in order to vote in person, but South Dakotans with no photo ID can still cast a regular ballot by signing a personal identification affidavit on election day."
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
    early:   "You can participate in early in-person voting for the Tennessee democratic primary between February 10, 2016 and February 23, 2016, during voting hours established by your county."
    idReq:   "Tennessee requires you to present a photo identification in order to vote in person. Acceptable IDs include valid photo IDs issued by any state government, valid U.S. passports, valid U.S. military photo IDs, and Tennessee handgun carry permits with photos."
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
    fillKey: keys.OPEN_CAUCUS
    regDate: '2016 03 22'
    date:    '2016 03 22'
    office:
      url:   'http://utahdemocrats.org'
      phone: '(801) 328-1212'
    regLink: 'https://secure.utah.gov/voterreg/index.html'
    chkLink: 'http://vote.utah.gov/vote/menu/index'
    dtlName: 'open caucuses'
    byline:  'Utahns can vote for Bernie Sanders regardless of their registered party, so long as they declare themselves to be participating Democrats at the Utah Democratic Party Caucus.'
    sameDay: 'Utah has Same-Day Registration which allows you to register to vote at the caucuses on Tue, March 22.'
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
    early:   "You can participate in early in-person voting for the Vermont democratic primary at your town clerk's office any time until Monday, February 29. Any voter can also request that their town clerk mail them an early voter absentee ballot any time before the primary. You can find the form to request an absentee ballot <a href='https://www.sec.state.vt.us/media/53483/VTAbsenteeRequestGeneric.pdf'>here</a>."
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
    fillKey: keys.OPEN_PRIMARY
    regDate: '2016 03 26'
    date:    '2016 03 26'
    office:
      url:   'http://www.wa-democrats.org/'
      phone: '(206) 583-0664'
    regLink: 'http://www.dol.wa.gov/driverslicense/voter.html'
    chkLink: 'https://www.sos.wa.gov/elections/myvote/'
    dtlName: 'open primaries'
    byline:  'Washingtonians can vote for Bernie Sanders regardless of their registered party.'
    sameDay: 'Washington has Same-Day Registration which allows you to register to vote at the caucuses on Sat, March 26.'
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
    dtlName: 'semi-closed primaries'
    byline:  'West Virginians must register as a Democrat or undeclared to vote for Bernie!'
    early:   "Early voting in the West Virginia Democratic Primary takes place bewteen April 27 and May 7, 2016. Contact your <a href='http://www.sos.wv.gov/elections/VoterRegistration/Pages/ClerkDirectory.aspx'>county clerk</a> to confirm early voting hours and locations."
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
    dtlName: 'open primaries'
    byline:  'Wisconsinites can vote for Bernie Sanders regardless of their registered party.'
    regInfo: "<a href='https://myvote.wi.gov/OnlineRegistration/Default.aspx'>Mail-in registration</a> to vote in the Wisconsin Democratic Primary closes on March 16, 2016. Wisconsinites who wish to register after that date can do so until April 1, 2016 by bringing proof of residency to the office of their <a href='http://www.gab.wi.gov/clerks/directory'>municipal clerk</a>. You can also register at your polling place on election day by bringing proof of residency and certifying that you've been a resident of Wisconsin for 28 days."
    early:   "You can participate in early voting for the Wisconsin Democratic Primary at your municipal clerk's <a href='http://www.gab.wi.gov/clerks/directory'>office</a> between March 21 and April 1, 2016. Or you can <a href='http://www.gab.wi.gov/elections-voting/voters/absentee'>request</a> a mail-in absentee ballot from your municipal clerk until March 31, 2016."
    idReq:   "Wisconsin requires you to present a photo identification in order to vote in person. Click <a href='http://bringit.wisconsin.gov'>here</a> to learn more about acceptable photo IDs."
  WY:
    name:    'Wyoming'
    fillKey: keys.CLOSED_CAUCUS
    regDate: '2016 03 25'
    date:    '2016 04 09'
    office:
      url:   'http://www.wyodems.org/2016-caucus-information'
      phone: '(307) 777-5860'
    regLink: 'http://soswy.state.wy.us/elections/registeringtovote.aspx'
    dtlName: 'closed caucuses'
    byline:  'Wyomingites must register as a Democrat to vote for Bernie!'
    regInfo: "If you are not yet 18 but will turn 18 by the November 8, 2016 presidential election, you can still vote for Bernie Sanders in your county caucus — just pre-register to vote as a Democrat with your county clerk <a href='https://soswy.state.wy.us/Elections/Docs/WYCountyClerks.pdf'>here</a>. (And when the presidential election comes, you'll be registered to vote as a Democrat). If you can't make it to your county caucus, use <a href='http://www.wyodems.org/sites/wyodems2015/files/CaucusSurrogateForm.pdf'>this form</a> to appoint a surrogate who can vote for Bernie Sanders (and candidates for other offices) on your behalf."

module.exports =
  keys:        keys
  label:       label
  primaryType: primaryType
  states:      states
