class Team < ActiveRecord::Base
  has_many :players, foreign_key: "team", primary_key: "abbr"
  has_many :contracts, through: :players
end
