var React = require('react');
var Team = require('./Team.jsx');

module.exports = React.createClass({
  render: function() {
    var teams = this.props.data.map(function(team) {
      return (
        <Team key={team.id} content=({name: team.team})
      );
    });
  }
});
