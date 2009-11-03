class Addunitsnov2009 < ActiveRecord::Migration
  def self.up
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
    knife = 6
    weapon = Weapon.new
         weapon.name = "Akrylat-Kanone"
         weapon.abbr = "Ak. Kanone"
         weapon.shortrange = 8
         weapon.mediumrange = 32
         weapon.longrange = 48
         weapon.maxrange = 96
         weapon.shortrangemod = 0
         weapon.mediumrangemod = +3
         weapon.longrangemod = -3
         weapon.maxrangemod = -6
         weapon.damage = "-"
         weapon.b = "1 (2 uses)"
         weapon.ammo ="Adhesive"
         weapon.template = "No"
         weapon.emvul = false;
         weapon.cc = false;
         weapon.save
    akrylatkanone = weapon;
    ################### New Merc ##################
    @unit = Unit.new
    @unit.name ="Valerya Gromoz";
    @unit.army_id = 7; 
    @unit.mov1 =4;
    @unit.mov2 = 4;
    @unit.cc = 13;
    @unit.bs = 11;
    @unit.ph = 10;
    @unit.wip = 14;
    @unit.arm = 1;
    @unit.bts = 0;
    @unit.w = 1;
    @unit.avail = 1
    @unit.regular = true
    @unit.impetuous = 0
    @unit.cube = true
    @unit.skills = ""
    @unit.unit_type_id = 1;
    @isaddon = false;
    @unit.save


    ### hacker
    @unitopt = UnitOption.new
    @unitopt.name ="Hacker (Hacking Device)"
    @unitopt.lt = false;
    @unitopt.swc=0.5
    @unitopt.cost=26
    @unitopt.unit_id = @unit.id
    @unitopt.isaddon = false
    @unitopt.save





    #combi rifle
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

    #knife`
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = knife
    @unitweapon.save
    
    
    ################### sputnik ##################
    @unit = Unit.new
    @unit.name ="Lunokhod";
    @unit.army_id = 4; 
    @unit.mov1 =6;
    @unit.mov2 = 4;
    @unit.cc = 8;
    @unit.bs = 12;
    @unit.ph = 8;
    @unit.wip = 13;
    @unit.arm = 3;
    @unit.bts = -6;
    @unit.w = 1;
    @unit.avail = 1
    @unit.regular = true
    @unit.impetuous = 0
    @unit.cube = true
    @unit.skills = "Climbing Plus, Minesweeper"
    @unit.unit_type_id = 5;
    @isaddon = false;
    @unit.save


    ### boardingsg
    @unitopt = UnitOption.new
    @unitopt.name =" KrazyKoala (Super-Jump)"
    @unitopt.lt = false;
    @unitopt.swc=0
    @unitopt.cost=29
    @unitopt.unit_id = @unit.id
    @unitopt.isaddon = false
    @unitopt.save





    #boardingsg
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = boardingsg 
    @unitweapon.save


    #heavyft
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = heavyft
    @unitweapon.save

    #epulse
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = epulse
    @unitweapon.save

    ### akrylatkanone
    @unitopt = UnitOption.new
    @unitopt.name =""
    @unitopt.lt = false;
    @unitopt.swc=0
    @unitopt.cost=26
    @unitopt.unit_id = @unit.id
    @unitopt.isaddon = false
    @unitopt.save





    #boardingsg
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = boardingsg 
    @unitweapon.save


    #heavyft
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = akrylatkanone
    @unitweapon.save

    #dcharges
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = dcharges
    @unitweapon.save

    #epulse
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = epulse
    @unitweapon.save  
  
  end

  def self.down
  end
end
