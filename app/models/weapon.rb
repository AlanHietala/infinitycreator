class Weapon < ActiveRecord::Base
  has_many :unit_options, :through=>:unit_option_weapons
end
