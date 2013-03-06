class Addcm < ActiveRecord::Migration
  def self.up
    add_column(:users, :isinch, :bool, :default=>true);
  end

  def self.down
    
  end
end