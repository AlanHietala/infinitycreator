class CreateUnitOptions < ActiveRecord::Migration
  def self.up
    create_table :unit_options do |t|
      t.column "name",:string
      t.column "bsweapons",:string
      t.column "ccweapons",:string
      t.column "swc",:float
      t.column "cost",:int
      t.column "unit_id",:int
      t.column "lt",:boolean,:default=>false
      t.column "bonusswc",:float,:default=>0.0
      t.column "isaddon",:boolean,:default=>false
      t.column "parent_unit_option_id",:int
      t.timestamps
    end
  end

  def self.down
    drop_table :unit_options
  end
end
