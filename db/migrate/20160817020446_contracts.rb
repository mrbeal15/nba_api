class Contracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :name
      t.string :team
      t.float :season_2016_17
      t.float :season_2017_18
      t.float :season_2018_19
      t.string :signed_using
      t.string :guaranteed

      t.timestamps null: false
    end
  end
end
