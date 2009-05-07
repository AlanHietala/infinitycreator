class ArmyList < ActiveRecord::Base
  belongs_to :army
  has_many :combat_groups
  belongs_to :user
validates_presence_of :maxpointvalue
validates_numericality_of :maxpointvalue, :only_integer => true
validates_presence_of :name  
  def self.validate()
  
  end
end
