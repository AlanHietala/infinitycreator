class CombatGroupUnit < ActiveRecord::Base
  
  belongs_to :unit_option
  belongs_to :combat_group
  
  validates_presence_of :unit_option_id
  validates_presence_of :combat_group_id
end
