class Player < ActiveRecord::Base
  has_one :contract, foreign_key: "name", primary_key: "name"
end
