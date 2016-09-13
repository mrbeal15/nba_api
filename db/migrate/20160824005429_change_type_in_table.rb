class ChangeTypeInTable < ActiveRecord::Migration
  def change
    change_column :contracts, :season_2016_17, :string
    change_column :contracts, :season_2017_18, :string
    change_column :contracts, :season_2018_19, :string
  end
end
