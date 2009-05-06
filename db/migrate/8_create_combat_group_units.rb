class CreateCombatGroupUnits < ActiveRecord::Migration
  def self.up
    create_table :combat_group_units do |t|
      t.column "unit_option_id",:int
      t.column "combat_group_id",:int
      t.timestamps
    end
  end

  def self.down
    drop_table :combat_group_units
  end
end
