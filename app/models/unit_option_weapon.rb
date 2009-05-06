class UnitOptionWeapon < ActiveRecord::Base
  belongs_to :unit_option
  belongs_to :weapon
end
