class Teams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :rank
      t.string :team
      t.integer :games
      t.integer :minutes_played
      t.integer :field_goals
      t.integer :field_goals_attempted
      t.float :field_goals_percentage
      t.integer :three_pointers
      t.integer :three_points_attempted
      t.float :three_points_percentage
      t.integer :two_pointers
      t.integer :two_points_attempted
      t.float :two_points_percentage
      t.integer :free_throws
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
      t.integer :total_points
      t.float :points_per_game

      t.timestamps null: false
    end
  end
end
