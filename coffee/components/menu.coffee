React = require('react')

module.exports = React.createClass
  displayName: 'Menu'

  render: ->
    <div className='menu'>
      <img src={require('img/logo.png')} alt='Bernie 2016' />
      <nav>
        <a href='https://berniesanders.com/about/'>Meet Bernie</a>
        <a href='https://berniesanders.com/issues/'>Issues</a>
        <a href='http://map.berniesanders.com/'>Events</a>
        <a href='https://go.berniesanders.com/page/s/volunteer-for-bernie?source=web_main_nav'>Volunteer</a>
        <a href='https://berniesanders.com/news/'>News</a>
        <a href='https://berniesanders.com/daily/'>Democracy Daily</a>
        <a href='https://secure.actblue.com/contribute/page/lets-go-bernie?refcode=homepage_main_nav' className='contribute'>Contribute</a>
      </nav>
    </div>