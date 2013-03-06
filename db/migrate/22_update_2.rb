class Update2 < ActiveRecord::Migration
  def self.up
    #update the kamau eq listing
    kamau = UnitOption.find(376)
    kamau.name = "X Visor"
    kamau.save
    
    #update the Crocman boarding sg
    croc = UnitOption.find(422)
    croc.swc = 0.0
    croc.save
    #update the Pal and aux to validate correctly
    pal = Unit.find(120)
    pal.regular=false
    pal.isaddon = true
    pal.save
    
    
    aux = Unit.find(118)
    aux.regular=false
    aux.isaddon = true
    aux.save
    #add the vet kazak with a t2 rifle
    
    
   #update the bots with isaddon and irregular
  end

  def self.down
    
  end
end