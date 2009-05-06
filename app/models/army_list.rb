class ArmyList < ActiveRecord::Base
  belongs_to :army
  has_many :combat_groups
  belongs_to :user
  
  def self.validate()
  
  end
end
