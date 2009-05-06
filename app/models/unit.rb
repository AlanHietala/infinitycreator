class Unit < ActiveRecord::Base
  belongs_to :unit_type
  belongs_to :army
  has_many :unit_options
  
end
