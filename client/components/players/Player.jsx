var React = require('react');

module.exports = React.createClass({
  render: function() {
    return (
      <li className="player">
        <span className="player-text">{this.props}</span>
      </li>
    );
  }
});
