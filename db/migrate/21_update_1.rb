class Update1 < ActiveRecord::Migration
  def self.up
    #update the kazak doctor with the correct Special ability
    doctor = UnitOption.find(58)
    doctor.name="Doctor"
    doctor.save
    #add the vet kazak with a t2 rifle
    
    
    ###  Veteran t2
          @unitopt = UnitOption.new
          @unitopt.name ="X Visor"
          @unitopt.lt = false;
          @unitopt.swc=0
          @unitopt.cost=48
          @unitopt.unit_id = 9
          @unitopt.save

          #t2rifle
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = 56
          @unitweapon.save
          #light FT
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = 32
          @unitweapon.save
          #pistol
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = 42
          @unitweapon.save

          #ccw
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = 2
          @unitweapon.save
  end

  def self.down
    
  end
end