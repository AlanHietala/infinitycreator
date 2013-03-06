class CreateArmyLists < ActiveRecord::Migration
  def self.up
    create_table :army_lists do |t|
      t.column "name",:string
      t.column "army_id",:int
      t.column "description",:string
      t.column "maxpointvalue",:int
      t.column "user_id",:int
      t.timestamps
    end
  end

  def self.down
    drop_table :army_lists
  end
end
