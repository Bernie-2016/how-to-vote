import React      from 'react'
import TopInfo    from 'components/states/partials/topInfo'
import CommonInfo from 'components/states/partials/commonInfo'
import RightInfo  from 'components/states/partials/rightInfo'

module.exports = React.createClass
  displayName: 'MI State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <TopInfo state={@props.state} />

        <h3 className='caps'>ID Requirement</h3>
        <p>
          Michigan voters must provide a photo ID at the polls, or sign an affidavit attesting that they do not possess a photo ID.  Acceptable Photo IDs include a valid driver's license, a federal or state-issued photo ID, a U.S. passport, a military photo ID, a high school or college photo ID, or a tribal photo ID.
        </p>
        <CommonInfo state={@props.state} />
      </div>
      <div className='right'>
        <RightInfo state={@props.state} />
      </div>
    </section>
