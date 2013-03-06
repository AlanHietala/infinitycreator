class CreateFavourites < ActiveRecord::Migration
  def self.up
    create_table :favourites do |t|
      t.column :army_list_id,:int
      t.column :user_id,:int
      t.timestamps
    end
  end

  def self.down
    drop_table :favourites
  end
end
