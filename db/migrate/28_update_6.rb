class Update6 < ActiveRecord::Migration
  def self.up
   #add the ghost column
   add_column(:units, :ghost, :boolean,:default=>false);
   
   palbot = Unit.find(120)
   palbot.unit_type_id = 5
   palbot.regular = true;
   palbot.ghost = true;
   palbot.save
   
   auxbot = Unit.find(118)
   auxbot.regular = true
   auxbot.ghost = true
   auxbot.unit_type_id = 5
   auxbot.save
   
   #set the stats for Arzr'll
   

     @unit = Unit.find(49)
     
   
     @unit.mov1 =4;
     @unit.mov2 = 4;
     @unit.cc = 14;
     @unit.bs = 13;
     @unit.ph = 13;
     @unit.wip = 14;
     @unit.arm = 3;
     @unit.bts = -3;
     @unit.w = 2;
     @unit.avail = 1
     @unit.regular = true
     @unit.impetuous = 0
     @unit.cube = false
     @unit.isaddon = false
     @unit.skills = ""
     @unit.unit_type_id = 2;
     @unit.isaddon = false;
     @unit.save
   
   
     #set the stats for intruder
     
     intruder = UnitOption.find(480)
     intruder.swc = 1
     intruder.cost = 37
     intruder.save
     
     ##add the spektrs
      ################ Spektrs ##############

       @unit = Unit.new
       @unit.name ="Spektrs";
       @unit.army_id = 4;
       @unit.mov1 =4;
       @unit.mov2 = 4;
       @unit.cc = 13;
       @unit.bs = 12;
       @unit.ph = 12;
       @unit.wip = 14;
       @unit.arm = 1;
       @unit.bts = 0;
       @unit.w = 1;
       @unit.avail = 2
       @unit.regular = true
       @unit.impetuous = 0
       @unit.cube = true
       @unit.isaddon = true
       @unit.skills = "CH: TO Camouflage, Infiltration"
       @unit.unit_type_id = 3;
       @unit.isaddon = false;
       @unit.save

       combi = Weapon.find(17)
       pistol = Weapon.find(42)
       knife = Weapon.find(6)
       lightsg = Weapon.find(33)
       apmines = Weapon.find(10)
       multisr = Weapon.find(38)
       emauler = Weapon.find(21)
     
### combi light sg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=33
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combi.id
@unitweapon.save

#lightsg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightsg.id
@unitweapon.save

#apmines
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apmines.id
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife.id
@unitweapon.save


### multisr
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=43
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multisr
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisr.id
@unitweapon.save



#apmines
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apmines.id
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife.id
@unitweapon.save

### combi light sg   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=45
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combi.id
@unitweapon.save

#lightsg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightsg.id
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife.id
@unitweapon.save


### Forward Observer 
@unitopt = UnitOption.new
@unitopt.name ="(Forward Observer)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=36
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combi.id
@unitweapon.save

#lightsg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightsg.id
@unitweapon.save

#apmines
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apmines.id
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife.id
@unitweapon.save


### combi light sg   
@unitopt = UnitOption.new
@unitopt.name ="(Deployable Repeater)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=33
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combi.id
@unitweapon.save

#lightsg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightsg.id
@unitweapon.save

#emauler
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emauler.id
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife.id
@unitweapon.save

### combi light sg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = true;
@unitopt.swc=2
@unitopt.cost=33
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combi.id
@unitweapon.save

#lightsg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightsg.id
@unitweapon.save

#apmines
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apmines.id
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife.id
@unitweapon.save

  end

  def self.down
   remove_column(:units, :ghost)
  end
end