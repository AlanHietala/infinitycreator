class Update10 < ActiveRecord::Migration
  def self.up
	############# Cutter  #########################     
t2rifle = 56
spitfire = 54
nanopulser = 39
pistol = 42
apccw = 1
expccw = 5
epulse = 3
multihmg = 36
heavyft = 26
mk12 = 53
grenades = 24
heavysg = 29
combirifle = 17
lightgl = 31
multisniperrifle = 38
marker = 52
boardingsg = 15
mfccw = 7
rifle = 44
lightsg = 33
panzerfaust = 41
dcharges = 18
smokelightgl = 45
dep = 49
emauler = 21

weapon = Weapon.new
     weapon.name = "Viral Mines"
     weapon.abbr = ""
     weapon.shortrange = -1
     weapon.mediumrange = -1
     weapon.longrange = -1
     weapon.maxrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrangemod = -1
     weapon.longrangemod = -1
     weapon.maxrangemod = -1
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="Viral"
     weapon.template = "Circular / Small Teardrop"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
viralmines = weapon;
################### Wulver ##################
@unit = Unit.new
@unit.name ="Wulver";
@unit.army_id = 1; 
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 18;
@unit.bs = 12;
@unit.ph = 14;
@unit.wip = 13;
@unit.arm = 3;
@unit.bts = 0;
@unit.w = 2;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 2
@unit.cube = false
@unit.skills = "Berserk, Climbing Plus, Natural Born Warrior"
@unit.unit_type_id = 7;
@isaddon = false;
@unit.save


### mk12
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=36
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#mk12
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = mk12 
@unitweapon.save


#grenades
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = grenades
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#apccw`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw
@unitweapon.save

### t2 rifle
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#t2rifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = t2rifle 
@unitweapon.save


#grenades
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = grenades
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#apccw`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw
@unitweapon.save

### heavy shotgun
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#heavy shotgun
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavysg
@unitweapon.save


#grenades
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = grenades
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#apccw`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw
@unitweapon.save


################### Moderator ##################
@unit = Unit.new
@unit.name ="Moderator";
@unit.army_id = 4; 
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 10;
@unit.ph = 10;
@unit.wip = 12;
@unit.arm = 1;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = -1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Shock Immunity"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi rifle
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=9
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#combirifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#epulse`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse 
@unitweapon.save

### spitfire
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=16
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire 
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#epulse`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse 
@unitweapon.save

### light gl
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=14
@unitopt.cost=0.5
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combirifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle
@unitweapon.save

#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl 
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#epulse`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse 
@unitweapon.save

### multisniperrifle
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#multisniper
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle 
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#epulse`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse 
@unitweapon.save

### combit marker
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=11
@unitopt.cost=0.5
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combirifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle
@unitweapon.save

#marker
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = marker
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#epulse`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse 
@unitweapon.save

### combi rifle
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=21
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#combirifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#epulse`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse 
@unitweapon.save

### combi rifle
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=13
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#combirifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#epulse`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse 
@unitweapon.save

### combi rifle
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=2.0
@unitopt.cost=9
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#combirifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#epulse`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse 
@unitweapon.save

################### Oniwaban  ##################
@unit = Unit.new
@unit.name ="Oniwaban";
@unit.army_id = 6; 
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 19;
@unit.bs = 11;
@unit.ph = 12;
@unit.wip = 14;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube =true
@unit.skills = "CH: TO Camouflage, Martial Arts 4, Superior Infiltration"
@unit.unit_type_id = 3;
@isaddon = false;
@unit.save


### mk12
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=44
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#mk12
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg
@unitweapon.save


#grenades
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = nanopulser
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#apccw`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = mfccw
@unitweapon.save

### mk12
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant Japanese only"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=44
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#mk12
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg
@unitweapon.save


#grenades
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = nanopulser
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#apccw`
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = mfccw
@unitweapon.save

################### Hassassin Muyibs ##################
@unit = Unit.new
@unit.name ="Muyib";
@unit.army_id = 3; 
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 15;
@unit.bs = 12;
@unit.ph = 11;
@unit.wip = 14;
@unit.arm = 2;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube =false
@unit.skills = "Religious Troop, V: Dogged"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### normal
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#rifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = rifle
@unitweapon.save


#lightsg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightsg 
@unitweapon.save

#panzerfaust
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = panzerfaust 
@unitweapon.save

#dcharges
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =dcharges
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife
@unitweapon.save

### normal
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#rifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = rifle
@unitweapon.save


#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl 
@unitweapon.save

#smoke gl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokelightgl 
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife
@unitweapon.save

### normal
@unitopt = UnitOption.new
@unitopt.name ="Minelayer"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=29
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#rifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = rifle
@unitweapon.save


#lightsg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightsg 
@unitweapon.save

#dep
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =dep
@unitweapon.save

#emauler
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =emauler
@unitweapon.save



#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife
@unitweapon.save

### normal
@unitopt = UnitOption.new
@unitopt.name ="Minelayer"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#rifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = rifle
@unitweapon.save


#lightsg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightsg 
@unitweapon.save

#dep
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =dep
@unitweapon.save

#viral mines
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = viralmines.id
@unitweapon.save



#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife
@unitweapon.save

### normal
@unitopt = UnitOption.new
@unitopt.name ="X-Visor"
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=31
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire
@unitweapon.save


#dcharges
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dcharges
@unitweapon.save



#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife
@unitweapon.save


### normal
@unitopt = UnitOption.new
@unitopt.name ="Doctor"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=27
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#rifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = rifle
@unitweapon.save


#lightsg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightsg 
@unitweapon.save

#dep
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =dep
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife
@unitweapon.save

### normal
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1.5
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#rifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = rifle
@unitweapon.save


#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl 
@unitweapon.save

#smoke gl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokelightgl 
@unitweapon.save


#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol
@unitweapon.save

#knife
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife
@unitweapon.save





  end

  def self.down
    
  end
end
