class ArmyList < ActiveRecord::Base
  belongs_to :army
  has_many :combat_groups
  belongs_to :user
validates_presence_of :maxpointvalue
validates_numericality_of :maxpointvalue, :only_integer => true
validates_presence_of :name  
  def self.validate()
  
  end
  
  def self.search(min,max,armyid,page)
    paginate :per_page => 20, :page => page,
               :conditions => ['maxpointvalue >= ? and maxpointvalue <= ? and army_id = ?', min,max,armyid], :order => 'created_at DESC'
    
  end
end
