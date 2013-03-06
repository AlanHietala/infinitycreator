class CreateSectorials < ActiveRecord::Migration
  def self.up
    create_table :sectorials do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :sectorials
  end
end
