class Favourite < ActiveRecord::Base
  belongs_to :user
  belongs_to :army_list
  
  validates_uniqueness_of :army_list_id,:scope=>:user_id
end
