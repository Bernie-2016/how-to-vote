import React  from 'react'
import entity from 'utils/entity'

module.exports = React.createClass
  displayName: 'Footer'

  render: ->
    <div>
      <div className='module-wrapper'>  
        <div className='ready-form'>
          <h1>Are you ready?</h1>
          <hr />
          <form action='https://go.berniesanders.com/page/s/join' method='post'>
            <input type='email' name='email' placeholder='Email Address' />
            <input type='text' name='zip' placeholder='Zip Code' />
            <input type='submit' value='Join Us' />
          </form>
        </div>
      </div>
      <div className='footer-offset'>
        <footer>
          <nav>
            <div className="navgroup">
              <h3>Learn</h3>
              <ul className="menu">
                <li><a href="https://berniesanders.com/">Home</a></li>
                <li><a href="https://berniesanders.com/about/">Meet Bernie</a></li>
                <li><a href="https://berniesanders.com/issues">Issues</a></li>
                <li><a href="https://vote.berniesanders.com/">How to Vote</a></li>
                <li><a href="https://berniesanders.com/news/">News</a></li>
                <li><a href="https://berniesanders.com/daily">Democracy Daily</a></li>
                <li><a href="https://berniesanders.com/es/">En Español</a></li>
              </ul>
            </div>
            <div className="navgroup">
              <h3>Organize</h3>
              <ul className="menu">
                <li><a href="https://secure.actblue.com/contribute/page/lets-go-bernie?refcode=homepage_full_nav">Contribute</a></li>
                <li><a href="https://go.berniesanders.com/page/s/join?source=web_full_nav">Sign Up</a></li>
                <li><a href="https://go.berniesanders.com/page/signup/volunteer-for-bernie?source=web_full_nav">Volunteer</a></li>
                <li><a href="http://map.berniesanders.com/?source=web_full_nav">Events</a></li>
                <li><a href="https://berniesanders.com/organize/">Organizing Hub</a></li>
                <li><a href="https://store.berniesanders.com/">Store</a></li>
                <li><a href="https://berniesanders.com/jobswithbernie2016/">Jobs</a></li>
              </ul>
            </div>
            <div className="navgroup">
              <h3>Connect</h3>
              <ul className="menu">
                <li><a target="_blank" href="https://www.facebook.com/berniesanders">Facebook</a></li>
                <li><a target="_blank" href="https://twitter.com/BernieSanders">Twitter</a></li>
                <li><a target="_blank" href="https://www.youtube.com/channel/UCH1dpzjCEiGAt8CXkryhkZg">YouTube</a></li>
                <li><a target="_blank" href="https://instagram.com/berniesanders/">Instagram</a></li>
                <li><a target="_blank" href="http://berniesanders.tumblr.com/">Tumblr</a></li>
              </ul>
            </div>
            <div className="navgroup">
              <h3>States</h3>
              <ul className="menu">
                <li><a href="https://berniesanders.com/iowa/">Iowa</a></li>
                <li><a href="https://berniesanders.com/new-hampshire/">New Hampshire</a></li>
                <li><a href="https://berniesanders.com/nevada/">Nevada</a></li>
                <li><a href="https://berniesanders.com/south-carolina/">South Carolina</a></li>
                <li><a href="https://go.berniesanders.com/page/s/signup-vt?source=web_full_nav">Vermont</a></li>
              </ul>
            </div>
            <div className="navgroup">
              <h3>Media</h3>
              <ul className="menu">
                <li><a href="https://berniesanders.com/press-release">Press Releases</a></li>
                <li><a href="https://go.berniesanders.com/page/s/press-list?source=web_full_nav">Event Registration</a></li>
                <li><a href="https://berniesanders.com/media-kit/">Media Kit</a></li>
              </ul>
            </div>
          </nav>
          <p className='address'>Bernie 2016<br/>PO Box 905<br/>Burlington, VT 05402</p>
          <p className='site-title'>
            Paid for by Bernie 2016
          </p>
          <span className='billionaires'>(not the billionaires)</span>
          <p className='copy'>
            <span className='copyright'>
              {entity('copy')} Bernie 2016
            </span>
            |
            <a href='https://berniesanders.com/privacy-policy'>Privacy Policy</a>
          </p>
        </footer>
      </div>
    </div>
