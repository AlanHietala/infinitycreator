class CreateUnitOptionWeapons < ActiveRecord::Migration
  def self.up
    create_table :unit_option_weapons do |t|
      t.column "weapon_id",:int
      t.column "unit_option_id",:int
      
      t.timestamps
    end
  end

  def self.down
    drop_table :unit_option_weapons
  end
end
