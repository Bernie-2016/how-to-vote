React = require('react')

module.exports = React.createClass
  displayName: 'Button'

  render: ->
    <a href={@props.link} target='_blank' className={"btn #{@props.classes}"}>
      {@props.title}
    </a>
