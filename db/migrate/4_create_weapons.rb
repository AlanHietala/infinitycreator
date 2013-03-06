class CreateWeapons < ActiveRecord::Migration
  def self.up
    create_table :weapons do |t|
      t.column "name",:string
      t.column "abbr",:string
      t.column "shortrange",:int
      t.column "shortrangemod",:int
      t.column "mediumrange",:int
      t.column "mediumrangemod",:int
      t.column "longrange",:int
      t.column "longrangemod",:int
      t.column "maxrange",:int
      t.column "maxrangemod",:int
      t.column "damage",:string,:limit=>10
      t.column "b",:string,:limit=>10
      t.column "ammo",:string,:limit=>20
      t.column "template",:string,:limit=>20
      t.column "emvul",:boolean
      t.column "cc",:boolean
      t.timestamps
    end
    
    
  end

  def self.down
    drop_table :weapons
  end
end
