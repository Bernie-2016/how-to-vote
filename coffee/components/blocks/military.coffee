React = require('react')

module.exports = React.createClass
  displayName: 'College'

  render: ->
    <div>
      <h3 className='caps'>Military/Overseas Voters</h3>
      <p>
        If you are a military voter or a United States citizen living abroad, you are able to <a href='https://www.votefromabroad.org/vote/home.htm' target='_blank'>request a ballot here</a>.
      </p>
    </div>
