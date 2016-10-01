var React = require('react');
var TeamsList = require('./List.jsx');

module.exports = React.createClass({
  getInitialState: function() {
    return {data: []};
  },
  componentDidMount: function() {
    this.readPlayersFromAPI();
  },
  readPlayersFromAPI: function() {
    this.props.readFromAPI(this.props.origin + '/v1/players', function(players){
      this.setState({data: players});
    }.bind(this));
  },
  render: function() {
    return (
      <div className="players-list">
        <PlayersList data={this.state.data} />
      </div>
    );
  }
});
