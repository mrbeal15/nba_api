class Api::V1::PlayerSerializer < Api::V1::BaseSerializer
  attributes :id, :rank, :name,  :position, :age, :team, :games, :games_started, :minutes_played, :field_goals, :field_goals_attempted, :field_goal_percentage, :three_pointers, :three_pointers_attempted, :three_point_percentage, :two_pointers, :two_pointers_attempted, :two_point_percentage, :effective_field_goal_percentage, :free_throws_made, :free_throws_attempted, :free_throw_percentage, :offensive_rebounds, :defensive_rebounds, :total_rebounds, :assists, :steals, :blocks, :turnovers, :personal_fouls, :points, :created_at, :updated_at

  # has_many :microposts
  # has_many :following
  # has_many :followers

  def created_at
    object.created_at.in_time_zone.iso8601 if object.created_at
  end

  def updated_at
    object.updated_at.in_time_zone.iso8601 if object.created_at
  end
end
