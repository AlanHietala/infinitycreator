class Update7 < ActiveRecord::Migration
  def self.up
    #fix zero
    emaulerzero = UnitOptionWeapon.find(1816)
    emaulerzero.weapon_id = 21
    emaulerzero.save
  end

  def self.down
    
  end
end