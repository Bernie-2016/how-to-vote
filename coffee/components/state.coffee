React       = require('react')
fills       = require('../states').fills
label       = require('../states').label
primaryType = require('../states').primaryType
states      = require('../states').states

module.exports = React.createClass
  displayName: 'State'

  render: ->
    state = states[this.props.params.state.toUpperCase()]
    console.log(state)

    return (
      <div>
        <div className='state-top'>
          <div>
            <h2 className='center' style={color: fills[state.fillKey]}>{state.name}</h2>
            <h3 className='center'>{label(state.fillKey)}</h3>
          </div>
          <div className='center'>
            <svg className='state-svg' xmlns='http://www.w3.org/2000/svg' version='1.1' viewBox={state.svg.viewBox} fill={fills[state.fillKey]}>
              <path d={state.svg.path[0].d} />
            </svg>
          </div>
        </div>
        <div className='state-dates'>
          <div className='center'>
            <h2 style={color: fills[state.fillKey]}>Registration Date</h2>
            <h4>{state.regDate}</h4>
          </div>
          <div className='center'>
            <h2 style={color: fills[state.fillKey]}>{primaryType(state.fillKey)} Date</h2>
            <h4>{state.date}</h4>
          </div>
        </div>
        {if state.component
          <state.component />
        }
        <div className='state-final'>
          <blockquote>
            When people vote, Democrats win
            <cite>
              &mdash; Sen. Bernie Sanders
            </cite>
          </blockquote>
        </div>
      </div>
    )
