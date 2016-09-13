class CreateJoinTablePlayerContract < ActiveRecord::Migration
  def change
    create_join_table :players, :contracts do |t|
      # t.index [:name, :name]
      # t.index [:name, :name]
    end
  end
end
