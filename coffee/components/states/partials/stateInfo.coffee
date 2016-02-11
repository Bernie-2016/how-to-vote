import React      from 'react'
import TopInfo    from 'components/states/partials/topInfo'
import CommonInfo from 'components/states/partials/commonInfo'
import RightInfo  from 'components/states/partials/rightInfo'

module.exports = React.createClass
  displayName: 'State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <TopInfo state={@props.state} />
        {if @props.state.idReq
          <div>
            <h3 className='caps'>ID Requirement</h3>
            <p dangerouslySetInnerHTML={__html: @props.state.idReq} />
          </div>
        }
        {if @props.state.early
          <div>
            <h3 className='caps'>Early Voting</h3>
            <p dangerouslySetInnerHTML={__html: @props.state.early} />
          </div>
        }
        <CommonInfo state={@props.state} />
      </div>
      <div className='right'>
        <RightInfo state={@props.state} />
      </div>
    </section>
