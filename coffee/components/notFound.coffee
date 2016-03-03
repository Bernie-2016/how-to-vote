import React  from 'react'
import Header from 'components/header'

module.exports = React.createClass
  displayName: 'Not Found'
  render: ->
    <div>
      {unless @props.skipHeader
        <Header {...@props} />
      }
      <div className='center'>
        <h2>404 Not Found</h2>
        <iframe width='560' height='315' src='https://www.youtube.com/embed/Dhot2OJKKZc' frameBorder='0' allowFullScreen />
      </div>
    </div>
