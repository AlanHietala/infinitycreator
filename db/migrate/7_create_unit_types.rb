class CreateUnitTypes < ActiveRecord::Migration
  def self.up
    create_table :unit_types do |t|
      t.column "name",:string
      t.column "abr",:string
      t.timestamps
    end
    @unittype = UnitType.new
    @unittype.name = "Light Infantry"
    @unittype.abr = "LI"
    @unittype.save
    
    @unittype = UnitType.new
    @unittype.name = "Heavy Infantry"
    @unittype.abr = "HI"
    @unittype.save
    
    @unittype = UnitType.new
    @unittype.name = "Scout"
    @unittype.abr = "SK"
    @unittype.save
  end

  def self.down
    drop_table :unit_types
  end
end
