class AddMercs < ActiveRecord::Migration
  def self.up
    #add the column isMerc
    add_column(:units, :isMerc, :boolean,:default=>true)
    #add the mercs army list
    mercs = Army.new
    mercs.name = "Mercenaries"
    mercs.save
    
  end

  def self.down
  end
end
