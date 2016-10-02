var React = require('react');
var TeamsList = require('./List.jsx');

module.exports = React.createClass({
  getInitialState: function() {
    return {data: []};
  },
  componentDidMount: function() {
    this.readTeamsFromAPI();
  },
  readTeamsFromAPI: function() {
    this.props.readFromAPI(this.props.origin + '/v1/teams', function(teams) {
      this.setState({data: teams})
    }.bind(this));
  },
  render: function() {
    return (
      <div className="teams-list">
        <TeamsList data={this.state.data} />
      </div>
    );
  }
});
