var React = require('react');
var Router = require('react-router');
var App = require('../components/layout/App.jsx');
var TeamsView = require('../components/teams/View.jsx');
var PlayersView = require('../components/players/View.jsx');
var ContractsView = require('../components/players/contracts/View.jsx');
var AboutView = require('../components/static/AboutView.jsx')
var Route = Router.Route;

module.exports = (
  <Route name="app" path="/" handler={App}>
    <Route name="teams" handler={TeamsView} />
    <Route name="players" handler={PlayersView}>
      <Route name="contracts" handler={ContractsView} />
    </Route>
    <Route name="about" handler={AboutView} />
  </Route>
);
