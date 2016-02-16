import React           from 'react'
import TopInfo         from 'components/states/partials/topInfo'
import CommonInfo      from 'components/states/partials/commonInfo'
import Wufoo           from 'lib/wufoo'
import Sticky          from 'react-stickynode'
import moment          from 'moment'
import { primaryType } from 'states'
import AddToCal        from 'components/states/partials/calWidget'
import Reminder        from 'components/states/partials/reminderWidget'

module.exports = React.createClass
  displayName: 'IL State Info'

  getInitialState: ->
    {
      register: false
    }

  componentDidMount: ->
    options =
      userName: 'registeril',
      formHash: 'm1y5ekos0wjaphk',
      autoResize: true,
      async: true,
      host: 'wufoo.com',
      header: 'show',
      ssl: true,
      defaultValues: 'Field1137=53777f82534c462aaef98a43312fe2b3'
    form = new Wufoo()
    form.initialize(options)
    form.display()

  register: (e) ->
    e.preventDefault()
    @setState(register: true)

  render: ->
    <section className='flex'>
      <div className='left'>
        <div hidden={@state.register}>
          <TopInfo state={@props.state} />
          {if @props.state.regInfo
            <div>
              <p dangerouslySetInnerHTML={__html: @props.state.regInfo} />
            </div>
          }
          {if @props.state.idReq
            <div>
              <h3 className='caps'>ID Requirement</h3>
              <p dangerouslySetInnerHTML={__html: @props.state.idReq} />
            </div>
          }
          {if @props.state.early
            <div>
              <h3 className='caps'>Early or Absentee Voting</h3>
              <p dangerouslySetInnerHTML={__html: @props.state.early} />
            </div>
          }
          <h3 className='caps'>Only 17?</h3>
          <p>
            You may still vote in Illinois if you will be 18 years old by November 8, 2016.
          </p>
          <CommonInfo state={@props.state} />
        </div>
        <div id='wufoo-m1y5ekos0wjaphk' style={height: '2500px', overflowY: 'scroll'} hidden={!@state.register} />
      </div>
      <div className='right'>
        <Sticky top={25} bottomBoundary='section.flex'>
          <h3 className='caps'>{primaryType(@props.state.fillKey, @props.state.label)} Date</h3>
          <p className='date jubilat blue'>
            {moment(@props.state.date, 'YYYY MM DD').format('ddd, MMM Do')}
          </p>
          <AddToCal date={@props.state.date} state={@props.state} />
          {if @props.state.regDate
            <div>
              <h3 className='caps'>
                Registration Deadline
              </h3>
              <p className='date jubilat blue'>
                {moment(@props.state.regDate, 'YYYY MM DD').format('ddd, MMM Do')}
              </p>
              {if moment().isSame(moment(@props.state.regDate, 'YYYY MM DD'), 'days')
                <h4>(today!)</h4>
              }
              <AddToCal date={@props.state.regDate} state={@props.state} addendum={' Registration Deadline'} />
            </div>
          }
          <Reminder {...@props} />
          <hr className='right-divider' />

          <p>
            <a href='#' onClick={@register} className='btn blue'>
              Register to Vote
            </a>
          </p>
          <p>
            <a href={@props.state.chkLink} target='_blank' className='btn'>
              Check Registration Status
            </a>
          </p>
        </Sticky>
      </div>
    </section>
