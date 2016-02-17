import React from 'react'
import $     from 'jquery'

module.exports = React.createClass
  displayName: 'Menu'

  componentDidMount: ->
    # Navigation Toggle
    origHeight = $('header.clearfix').outerHeight()

    $('.expand, .close').on 'click', (event) ->
      event.preventDefault()

      # Get nav height value
      winWidth = $(window).width()
      navHeight = if winWidth > 767 then '28rem' else '50rem'

      if $('.full-nav').is(':visible')
        $('header.clearfix').animate { height: origHeight }, 300, ->
          # complete animate

        $('.full-nav').fadeToggle 100
      else
        $('header.clearfix').animate { height: navHeight }, 300, ->
          # complete animate

        $('.full-nav').fadeToggle 100

  render: ->
    <header role="banner" className="clearfix">
      <a className="logo sanders-logo" href="https://berniesanders.com/?nosplash=true/" title="Home">
        <h1>
        Bernie 2016
        </h1>
      </a>
      <nav>
        <button type="button" className="expand">Menu<span className="bar"></span><span className="bar"></span><span className="bar"></span></button>
        <ul id="menu-main-menu" className="menu">
          <li><a href="https://berniesanders.com/about/">Meet Bernie</a></li>
          <li><a href="https://berniesanders.com/issues">Issues</a></li>
          <li><a href="http://map.berniesanders.com">Events</a></li>
          <li><a href="https://go.berniesanders.com/page/s/volunteer-for-bernie?source=web_main_nav">Volunteer</a></li>
          <li><a href="https://berniesanders.com/news/">News</a></li>
          <li><a href="https://berniesanders.com/daily">Democracy Daily</a></li>
          <li className="expand"><a href="#more">More…</a></li>
          <li className="btn"><a href="https://secure.actblue.com/contribute/page/lets-go-bernie?refcode=homepage_main_nav">Contribute</a></li>
        </ul>
      </nav>
      <nav className="full-nav clearfix">
        <div className="nav-container">
          <h2>Menu <button type="button" className="close">Close</button></h2>
          <div className="navgroup">
            <h3>Learn</h3>
            <ul id="menu-learn" className="menu">
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
            <ul id="menu-organize" className="menu">
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
            <ul id="menu-connect" className="menu">
              <li><a target="_blank" href="https://www.facebook.com/berniesanders">Facebook</a></li>
              <li><a target="_blank" href="https://twitter.com/BernieSanders">Twitter</a></li>
              <li><a target="_blank" href="https://www.youtube.com/channel/UCH1dpzjCEiGAt8CXkryhkZg">YouTube</a></li>
              <li><a target="_blank" href="https://instagram.com/berniesanders/">Instagram</a></li>
              <li><a target="_blank" href="http://berniesanders.tumblr.com/">Tumblr</a></li>
            </ul>
          </div>
          <div className="navgroup">
            <h3>States</h3>
            <ul id="menu-states" className="menu">
              <li><a href="https://berniesanders.com/iowa/">Iowa</a></li>
              <li><a href="https://berniesanders.com/new-hampshire/">New Hampshire</a></li>
              <li><a href="https://berniesanders.com/nevada/">Nevada</a></li>
              <li><a href="https://berniesanders.com/south-carolina/">South Carolina</a></li>
              <li><a href="https://go.berniesanders.com/page/s/signup-vt?source=web_full_nav">Vermont</a></li>
            </ul>
          </div>
          <div className="navgroup">
            <h3>Media</h3>
            <ul id="menu-media" className="menu">
              <li><a href="https://berniesanders.com/press-release">Press Releases</a></li>
              <li><a href="https://go.berniesanders.com/page/s/press-list?source=web_full_nav">Event Registration</a></li>
              <li><a href="https://berniesanders.com/media-kit/">Media Kit</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
