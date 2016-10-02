var React = require('react');

module.exports = React.createClass({
  render: function() {
    return (
      <li className="team">
        <div>
          <span className="team-text"><b>{this.props.content}</b></span>
        </div>
      </li>
    );
  }
});
