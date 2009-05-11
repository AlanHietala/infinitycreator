class Update4 < ActiveRecord::Migration
  def self.up
    #daturazi
    dat = Unit.find(63)
    dat.skills ="morat, Martial Arts 4 , CH:Mimetism, Coma"
    
    #update unit option for dat from combi to chain rifle
    
  end

  def self.down
    
  end
end