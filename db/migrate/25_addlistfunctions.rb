class Addlistfunctions < ActiveRecord::Migration
  def self.up
    #add_column(:combat_group_units, :position, :int);
    cgroups = CombatGroup.find(:all,:include=>[:combat_group_units])
    cgroups.each do |c|
      
      c.combat_group_units.each_with_index do |unit,i|
        unit.position = i+1
        unit.save
      end
    end
  end

  def self.down
    remove_column(:combat_group_units, :position);
  end
end