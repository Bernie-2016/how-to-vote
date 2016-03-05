import React from 'react'

module.exports = React.createClass
  displayName: 'Button'

  render: ->
    <p>
      <a href={@props.link} target='_blank' className={"btn #{@props.classes}"}>
        {@props.title}
      </a>
    </p>
