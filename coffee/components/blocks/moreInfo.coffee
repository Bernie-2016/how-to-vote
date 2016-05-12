React         = require('react')
{primaryType} = require('states')

module.exports = React.createClass
  displayName: 'More Info'

  render: ->
    <div>
      <h3 className='caps'>More Information</h3>
      <p>
        If you have any questions about voting in {@props.state.name} you may contact your state {if primaryType(@props.state.fillKey, @props.state.label) is 'Caucus' then 'party' else 'elections office'} for more information.
      </p>
      <p>
        <a href={@props.state.office.url} target='_blank'>{@props.state.name} {if primaryType(@props.state.fillKey, @props.state.label) is 'Caucus' then 'Democratic Party' else 'Elections Office'}</a><br />
        {if @props.state.office.phone
          <span>
            Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
          </span>
        }
      </p>
    </div>
