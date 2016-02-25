import React      from 'react'
import TopInfo    from 'components/partials/topInfo'
import CommonInfo from 'components/partials/commonInfo'
import RightInfo  from 'components/partials/rightInfo'
import { verb }   from 'states'

module.exports = React.createClass
  displayName: 'HI State Info'

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
        {if @props.state.pollWgt
          <PollPlace state={@props.state} />
        }
        <h3 className='caps'>College Students</h3>
        <p>
          A college student must be a legal resident of Hawaii in order to be able to caucus for Bernie in Hawaii.
        </p>
        <h3 className='caps'>More Information</h3>
        <p>
         If you have any questions about voting in the Hawaii Democratic caucus you can contact the Democratic Party of Hawaii for more information.
        </p>
        <p>
          <a href={@props.state.office.url} target='_blank'>Democratic Party of Hawaii</a><br />
          Phone: <a href={"tel:+1#{@props.state.office.phone.replace(/\D/g,'')}"}>{@props.state.office.phone}</a>
        </p>
      </div>
      <div className='right'>
        <RightInfo {...@props} />
      </div>
    </section>
