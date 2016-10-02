var React = require('react');
var Player = require('./Player.jsx');

module.exports = React.createClass({
  render: function() {
    var players = this.props.data.map(function(player) {
      return (
        <Player key={player.id} content={{name: player.name, age: player.age, team: player.team, position: player.position}} />
        // position={player.position} age={player.age} team={player.team} games={player.games} games_started={player.games_started} minutes_played={player.minutes_player} field_goals={player.field_goals} field_goals_attempted={player.field_goals_attempted} field_goal_percentage={player.field_goal_percentage} three_pointers={player.three_pointers} three_pointers_attempted={player.three_pointers_attempted} three_point_percentage={player.three_point_percentage} two_pointers={player.two_pointers} two_pointers_attempted{player.two_pointers_attempted} two_point_percentage{player.two_point_percentage} effective_field_goal_percentage={player.effective_field_goal_percentage} free_throws_made={player.free_throws_made} free_throws_attempted={player.free_throws_attempted} free_throw_percentage={player.free_throw_percentage} offensive_rebounds={player.offensive_rebounds} defensive_rebounds={player.defensive_rebounds} total_rebounds={player.total_rebounds} assists{player.assists} steals={player.steals} blocks={player.blocks} turnovers={player.turnovers} personal_fouls={player.personal_fouls} points={player.points} />
      );
    });

    return (
      <ul className="players-list">
        {players}
      </ul>
    );
  }
});
