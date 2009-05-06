class CreateUnits < ActiveRecord::Migration
  def self.up
    create_table :units do |t|
      t.column "mov1",:int
      t.column "mov2",:int
      t.column "cc",:int
      t.column "bs",:int
      t.column "ph",:int
      t.column "wip",:int
      t.column "arm",:int
      t.column "bts",:int
      t.column "w",:int
      t.column "str",:int
      t.column "swc",:float
      t.column "cost",:int
      t.column "unit_type_id",:int
      t.column "avail",:int
      t.column "regular",:boolean
      t.column "impetuous",:int
      t.column "cube",:boolean
      t.column "skills",:string
      t.column "name",:string
      t.column "army_id",:int
      t.column "isaddon",:boolean,:default=>false
      t.timestamps
    end
    
    
  end

  def self.down
    drop_table :units
  end
end
