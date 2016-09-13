# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'


def load_players_file(filename)
  CSV.foreach(filename, :headers => true, header_converters: :symbol) do |initial_row|
    row = initial_row.to_hash
    Player.create(rank: row[:rk], name: row[:player], position: row[:pos], age:  row[:age], team: row[:tm], games: row[:g], games_started: row[:gs], minutes_played: row[:mp], field_goals: row[:fg], field_goals_attempted: row[:fga], field_goal_percentage: row[:fgp], three_pointers: row[:ep], three_pointers_attempted: row[:epa], three_point_percentage: row[:epp], two_pointers: row[:up], two_pointers_attempted: row[:upa], two_point_percentage: row[:upp], effective_field_goal_percentage: row[:efgp], free_throws_made: row[:ft], free_throws_attempted: row[:fta],
    free_throw_percentage: row[:ftp], offensive_rebounds: row[:orb], defensive_rebounds: row[:drb], total_rebounds: row[:trb], assists: row[:ast], steals: row[:stl], blocks: row[:blk], turnovers: row[:tov], personal_fouls: row[:pf], points: row[:pts] )
  end
end

def load_contracts_file(filename)
  CSV.foreach(filename, :headers => true, header_converters: :symbol) do |initial_row|
    row = initial_row.to_hash
    Contract.create(name: row[:player], team: row[:tm], season_2016_17: row[:s201617], season_2017_18: row[:s201718], signed_using: row[:signed_using], guaranteed: row[:guaranteed])
  end
end

def load_teams_file(filename)
  CSV.foreach(filename, :headers => true, header_converters: :symbol) do |initial_row|
    row = initial_row.to_hash
    Team.create(rank: row[:rk], team: row[:team], games: row[:g], minutes_played: row[:mp], field_goals: row[:fg], field_goals_attempted: row[:fga], field_goals_percentage: row[:fgp], three_pointers: row[:ep], three_points_attempted: row[:epa], three_points_percentage: row[:epp], two_pointers: row[:up], two_points_attempted: row[:upa], two_points_percentage: row[:upp], free_throws: row[:ft], free_throws_attempted: row[:fta], free_throw_percentage: row[:ftp], offensive_rebounds: row[:orb], defensive_rebounds: row[:drb], total_rebounds: row[:trb], assists: row[:ast], steals: row[:stl], blocks: row[:blk], turnovers: row[:tov], personal_fouls: row[:pf], total_points: row[:pts], points_per_game: row[:ptspg])
  end
end

load_players_file("/Users/mattbeal/Desktop/projects/nba/player.csv")
load_contracts_file("/Users/mattbeal/Desktop/projects/nba/contracts.csv")
load_teams_file("/Users/mattbeal/Desktop/projects/nba/2016_players/nba_players_2016/db/team.csv")

