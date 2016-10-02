var React = require('react');
var Router = require('react-router');
var Link = Router.Link;

module.exports = React.createClass({
  getInitialState: function() {
    return {data: []};
  },
  componentDidMount: function() {
    this.readDataFromAPI();
  },
  readDataFromAPI: function() {
    this.props.readFromAPI(this.props.origin + '/v1/data', function(data){
      this.setState({data: data});
    }.bind(this))
  },
  render: function() {
    return (
      <div id="content">
      <div id="nav">
        <ul>
          <li><Link to="app">Home</Link></li>
          <li><Link to="teams">Teams</Link></li>
          <li><Link to="players">Players</Link></li>
          <li><Link to="contracts">Contracts</Link></li>
        </ul>
      </div>
      </div>
    );
  }
})
