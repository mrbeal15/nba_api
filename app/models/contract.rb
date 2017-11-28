class Contract < ActiveRecord::Base
  belongs_to :player, primary_key: "name", foreign_key: "name"
  has_one :team, primary_key: "team", foreign_key: "abbr"
end
