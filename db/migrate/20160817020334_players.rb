class Players < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :rank
      t.string :name
      t.string :position
      t.integer :age
      t.string :team
      t.integer :games
      t.integer :games_started
      t.integer :minutes_played
      t.integer :field_goals
      t.integer :field_goals_attempted
      t.float :field_goal_percentage
      t.integer :three_pointers
      t.integer :three_pointers_attempted
      t.float :three_point_percentage
      t.integer :two_pointers
      t.integer :two_pointers_attempted
      t.integer :two_point_percentage
      t.float :effective_field_goal_percentage
      t.integer :free_throws_made
      t.integer :free_throws_attempted
      t.float :free_throw_percentage
      t.integer :offensive_rebounds
      t.integer :defensive_rebounds
      t.integer :total_rebounds
      t.integer :assists
      t.integer :steals
      t.integer :blocks
      t.integer :turnovers
      t.integer :personal_fouls
      t.integer :points

      t.timestamps null: false
    end
  end
end
