class UnitOption < ActiveRecord::Base
  belongs_to :unit
  has_many :unitaddons,:source=>:unit_option,:foreign_key=>"parent_unit_option_id"
  has_many :unit_option_weapons
  has_many :weapons,:through=>:unit_option_weapons
  has_many :bsweapons,:through=>:unit_option_weapons,:source=>:weapon,:conditions=>['weapons.cc = ?', 0]
  has_many :ccweapons,:through=>:unit_option_weapons,:source=>:weapon,:conditions=>['weapons.cc = ?', 1]
end
