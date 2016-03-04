import React                               from 'react'
import { ShareButtons, generateShareIcon } from 'react-share'

module.exports = React.createClass
  display: 'Share'

  render: ->
    FacebookIcon = generateShareIcon('facebook')
    TwitterIcon = generateShareIcon('twitter')

    <div className='share'>
      <ShareButtons.FacebookShareButton title='Share on Facebook' className='share-btn' url={"https://vote.berniesanders.com/#{@props.stateKey}"}>
        <FacebookIcon size={40} round={true} />
      </ShareButtons.FacebookShareButton>
      <ShareButtons.TwitterShareButton title='Share on Twitter' className='share-btn' url={"https://vote.berniesanders.com/#{@props.stateKey}"}>
        <TwitterIcon size={40} round={true} />
      </ShareButtons.TwitterShareButton>
    </div>
