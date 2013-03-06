class Update4 < ActiveRecord::Migration
  def self.up
    #update the keisotsu lgl 
    kei = UnitOption.find(272)
    kei.swc = 0.5
    kei.cost = 14
    kei.save
    
    shccw = Weapon.find(8)
    shccw.shortrange = -1
    shccw.mediumrange = -1
    shccw.longrange = -1
    shccw.maxrange = -1
    shccw.save
   
    #add the vet kazak with a t2 rifle
    
    
   #update the bots with isaddon and irregular
  end

  def self.down
    
  end
end