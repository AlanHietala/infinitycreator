class Update8 < ActiveRecord::Migration
  def self.up
	############# Joan of Arc  #########################     

spitfire = 54
nanopulser = 39
pistol = 42
apccw = 1
expccw = 5
epulse = 3
@unit = Unit.new
@unit.name ="Joan of Arc 2.0";
@unit.army_id = 5; 
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 18;
@unit.bs = 15;
@unit.ph = 14;
@unit.wip = 15;
@unit.arm = 3;
@unit.bts = -6;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 2
@unit.cube = true
@unit.skills = "Martial Arts 3, Inspiring Leadership, V:No Wound Incap, Religious Troop"
@unit.unit_type_id = 2;
@isaddon = false;
@unit.save


### apccw
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=57
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire
@unitweapon.save
#nanopulser
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = nanopulser
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#ap ccw
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw 
@unitweapon.save

### expccw
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=58
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire
@unitweapon.save
#nanopulser
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = nanopulser
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#exp ccw
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = expccw 
@unitweapon.save

### apccw
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=57
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire
@unitweapon.save
#nanopulser
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = nanopulser
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#ap ccw
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw 
@unitweapon.save


############# Nasmat remotes ################
@unit = Unit.new
@unit.name ="Nasmat Remotes";
@unit.army_id = 3; 
@unit.mov1 = 6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 8;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "CH: Mimetism"
@unit.unit_type_id = 5;
@isaddon = true;
@unit.save


### epulse
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc= 0
@unitopt.cost= 3
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#epulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse
@unitweapon.save
#
  end

  def self.down
    
  end
end
