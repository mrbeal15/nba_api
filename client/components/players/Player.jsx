var React = require('react');

module.exports = React.createClass({
  render: function() {
    return (
      <li className="player">
        <div>
          <span className="player-text"><b>{this.props.content.name}</b> - {this.props.content.age} - {this.props.content.team} - {this.props.content.position}</span>
        </div>
      </li>
    );
  }
});
