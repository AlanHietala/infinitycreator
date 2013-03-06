class CreateCombatGroups < ActiveRecord::Migration
  def self.up
    create_table :combat_groups do |t|
      t.column "army_list_id",:int
      t.timestamps
    end
  end

  def self.down
    drop_table :combat_groups
  end
end
