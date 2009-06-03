class Update9 < ActiveRecord::Migration
  def self.up
	############# Cutter  #########################     
  @unittype = UnitType.new
  @unittype.name = "Warband"
  @unittype.abr = "WB"
  @unittype.save
  
spitfire = 54
nanopulser = 39
pistol = 42
apccw = 1
expccw = 5
epulse = 3
multihmg = 36
heavyft = 26

@unit = Unit.new
@unit.name ="Cutter";
@unit.army_id = 5; 
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 18;
@unit.bs = 15;
@unit.ph = 17;
@unit.wip = 12;
@unit.arm = 8;
@unit.bts = -6;
@unit.w = 3;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH: TO Camouflage, ECM, Aqua Terrain"
@unit.unit_type_id = 6;
@isaddon = false;
@unit.save


### apccw
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=117
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg
@unitweapon.save


#epulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavyft
@unitweapon.save

## apccw
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=2
@unitopt.cost=117
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg
@unitweapon.save


#epulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavyft
@unitweapon.save

############# Yoaukon messanger

@unit = Unit.new
@unit.name ="Yaokong (Messenger)";
@unit.army_id = 6; 
@unit.mov1 =6;
@unit.mov2 = 6;
@unit.cc = 8;
@unit.bs = 8;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH: Mimetism, Multiterrain, Repeater"
@unit.unit_type_id = 5;
@isaddon = false;
@unit.save


### epulse
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=8
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#epulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse
@unitweapon.save


  end

  def self.down
    
  end
end
