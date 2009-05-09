class CombatGroup < ActiveRecord::Base
  belongs_to :army_list
  has_many :combat_group_units,:order_by => :position 
end
