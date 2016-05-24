React         = require('react')
Button        = require('components/blocks/button')
DateBox       = require('components/blocks/dateBox')
AddToCal      = require('components/widgets/addToCalWidget')
Reminder      = require('components/widgets/reminderWidget')
{primaryType} = require('states')
moment        = require('moment')
Share         = require('components/widgets/shareWidget')
$             = require('jquery')
ReactTooltip  = require("react-tooltip")

module.exports = React.createClass
  displayName: 'State Info'

  render: ->
    <div className='state-info'>
      <div className='breadcrumbs'>
        Bernie 2016 > Vote for Bernie > {@props.state.name}
      </div>

      <div className='state'>
        <div className='primary-info'>
          <div className='mobile-share'>
            <Share {...@props}/>
          </div>

          <h2>
            {@props.state.name}
          </h2>
          <h3 className='caps'><strong>{moment(@props.state.date, 'YYYY MM DD').format('ddd, MMM Do')}</strong> | {@props.state.type}</h3>
        </div>

        {unless not @props.state.parties
          <div className='can-vote'>
            <h3 className='caps'>Can Vote:</h3>

            <div className='party-icons'>
              {for party in @props.state.parties
                <div className="icon #{party}" data-tip="Democrats"></div>
              }
              <ReactTooltip place="top" effect="solid"/>
            </div>
          </div>
        }
      </div>

      <div className='register'>

        <div className='reg-deadline'>
          <h3 className='caps'>Register By: <strong>{moment(@props.state.regDate, 'YYYY MM DD').format('dddd, MMMM Do')}</strong></h3>
        </div>

        <div className='reg-buttons'>
          <Button title='Register' link={@props.state.regLink} classes={'btn-success' unless moment().isAfter(moment(@props.state.regDate, 'YYYY MM DD'), 'days')} />
          <Button title='Check Registration' link={@props.state.chkLink} classes='btn-secondary' />
        </div>
      </div>
    </div>
