import React      from 'react'
import TopInfo    from 'components/partials/topInfo'
import CommonInfo from 'components/partials/commonInfo'
import RightInfo  from 'components/partials/rightInfo'
import { verb }   from 'states'

module.exports = React.createClass
  displayName: 'State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
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
        {if @props.state.young is true
          <div>
            <h3 className='caps'>Only 17?</h3>
            <p>
              You may still {verb(@props.state)} in {@props.state.name} if you will be 18 years old by November 8, 2016.
            </p>
          </div>
        else if @props.state.young
          <div>
            <h3 className='caps'>Only 17?</h3>
            <p>
              {@props.state.young}
            </p>
          </div>
        }
        <CommonInfo {...@props} />
      </div>
      <div className='right'>
        <RightInfo {...@props} />
      </div>
    </section>
