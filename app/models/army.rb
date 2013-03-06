class Army < ActiveRecord::Base
  has_many :army_lists
  has_many :units
end
