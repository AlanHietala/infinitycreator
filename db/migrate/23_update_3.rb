class Update3 < ActiveRecord::Migration
  def self.up
    #update the tsy eq listing
    tsy = Unit.find(144)
    tsy.ph = 8
    tsy.save
    
    apmines = Weapon.find(10)
    apmines.abbr = "AP Mines"
    apmines.save
    
    moi = UnitOption.find(490)
    moi.lt = true;
    moi.save 
    
     squalo = UnitOption.find(417)
     squalo.lt = true;
    squalo.save
    
   
    #add the vet kazak with a t2 rifle
    
    
   #update the bots with isaddon and irregular
  end

  def self.down
    
  end
end