class CreateArmies < ActiveRecord::Migration
  def self.up
    create_table :armies do |t|
      t.column "name",:string
      t.timestamps
    end
    
           
          
            
    
    
  end

  def self.down
    drop_table :armies
  end
end
