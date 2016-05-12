React         = require('react')
Sticky        = require('react-stickynode')
moment        = require('moment')
Button        = require('components/blocks/button')
DateBox       = require('components/blocks/dateBox')
Young         = require('components/blocks/young')
AddToCal      = require('components/widgets/addToCalWidget')
Offices       = require('components/widgets/officesWidget')
PollPlace     = require('components/widgets/pollPlaceWidget')
Reminder      = require('components/widgets/reminderWidget')
Share         = require('components/widgets/shareWidget')
{primaryType} = require('states')
entity        = require('utils/entity')

module.exports = React.createClass
  displayName: 'HI State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Hawaii has closed caucuses {entity('mdash')} Hawaii residents must join the Democratic Party to vote for Bernie! However, Hawaii residents may join the Party on the day of the caucus.
        </p>
        <p>
          The caucus will be held on <strong>Saturday, March 26, 2016</strong> at <strong>1PM</strong> at a location near you. We recommend you try to arrive by <strong>12PM</strong> when the line starts so you can sign in and have your party membership and voter registration confirmed before voting in the Presidential Preference Poll. Please allow time for parking.
        </p>
        <p>
          If the line is short, the voting period may end shortly after 1:30PM. But if the turnout is large, voting will go on for much longer. Everyone who arrives while there is still a line will be allowed to vote, so it is difficult to predict when the opportunity to vote will end.
        </p>
        <ol>
          <li>
            <strong>Register to Vote:</strong> You can register to vote on the day of the caucus. To make the lines go more quickly on that day you can print out your form at home and bring it with you all filled out. If you or anyone going with you needs to register please print a form from <a href='https://olvr.hawaii.gov/(S(pru0giobre0ixtkf0vv5mt4u)))/Default.aspx' target='_blank'>this link</a>.
          </li>
          <li>
            <strong>Join the Democratic Party of Hawaii:</strong> You can also become a member of the Democratic Party of Hawaii on caucus day. You can help keep the line moving quickly by printing out a form found at <a href='https://hawaiidemocrats.org/join' target='_blank'>this link</a> and bringing it with you."
          </li>
          <li>
            <strong>Find your caucus location and get there on time:</strong> You can use the caucus location finder at the top of this page.
          </li>
          <li>
            <strong>Volunteer to help:</strong> A caucus is a volunteer run process and our campaign depends on your help. To lend a hand, please sign up to volunteer <a href='https://go.berniesanders.com/page/s/commit-caucus-hawaii' target='_blank'>here</a>.
          </li>
        </ol>
        <h3 className='caps'>How long does it take?</h3>
        <p>
          Depending on the lines, it could take less than an hour to sign in and cast your ballot for President. However, we are asking supporters to please stay for the election of delegates and precinct officers, which will happen towards the end of the caucus.
        </p>
        <h3 className='caps'>Is same day registration allowed?</h3>
        <p>
          Hawaii Caucus rules allow you to register to vote and join the Democratic party at the caucus and still participate. If you have friends who are not registered, please invite them to attend. If you can, it may be helpful to print forms out in advance and bring them with you on caucus day to help keep lines moving. Links are above.
        </p>
        <h3 className='caps'>I'm only 17. Can I vote at the caucus?</h3>
        <p>
          You may still caucus in Hawaii if you will be 18 years old by November 8, 2016.
        </p>
        <h3 className='caps'>Can college students vote at the caucus?</h3>
        <p>
          A college student must be a legal resident of Hawaii in order to be able to caucus for Bernie in Hawaii.
        </p>
        <h3 className='caps'>More Information</h3>
        <p>
         If you have any questions about voting in the Hawaii Democratic caucus you can contact the Democratic Party of Hawaii for more information.
        </p>
        <p>
          <a href={@props.state.office.url} target='_blank'>Democratic Party of Hawaii</a><br />
          Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
        </p>
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <DateBox title={"#{primaryType(@props.state.fillKey, @props.state.label)} Date"} date={@props.state.date} />
          <AddToCal date={@props.state.date} state={@props.state} />
          <DateBox title='Registration Deadline' date={@props.state.regDate} />
          <AddToCal date={@props.state.regDate} state={@props.state} addendum={' Registration Deadline'} />
          <Reminder {...@props} />
          <hr className='right-divider' />

          <Button title='Register to Vote' link='http://elections.hawaii.gov/frequently-asked-questions/online-voter-registration/' classes={'blue' unless moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days')} />
          <Button title='Check Registration Status' link='https://olvr.hawaii.gov/' />
        </Sticky>
      </div>
    </section>
