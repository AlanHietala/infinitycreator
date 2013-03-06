class Loaddata < ActiveRecord::Migration
  def self.up
    #Ariadna
    @ariadna = Army.new
    @ariadna.name = "Ariadna"
    @ariadna.save
    
    @combined = Army.new
    @combined.name = "Combined"
    @combined.save
      
    @haq = Army.new
    @haq.name = "Haqqislam"
    @haq.save

    @nomads = Army.new
    @nomads.name = "Nomads"
    @nomads.save

    @pano = Army.new
    @pano.name = "PanOceana"
    @pano.save

    @yujing = Army.new
    @yujing.name = "Yu Jing"
    @yujing.save


    
     #start adding weapons
     #create the weapons
     weapon = Weapon.new
     weapon.name = "AP Close Combat Weapon"
     weapon.abbr = "AP CCW"
     weapon.shortrange = -1
     weapon.mediumrange = -1
     weapon.longrange = -1
     weapon.maxrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrangemod = -1
     weapon.longrangemod = -1
     weapon.maxrangemod = -1
     weapon.damage = "PH"
     weapon.b = "-"
     weapon.ammo ="AP"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = true;
     weapon.save
     apccw = weapon
     
     weapon = Weapon.new
     weapon.name = "Close Combat Weapon"
     weapon.abbr = "CCW"
     weapon.shortrange = -1
     weapon.mediumrange = -1
     weapon.longrange = -1
     weapon.maxrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrangemod = -1
     weapon.longrangemod = -1
     weapon.maxrangemod = -1    
     weapon.damage = "PH"
     weapon.b = "-"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = true;
     weapon.save
     ccw = weapon
     
     weapon = Weapon.new
     weapon.name = "Electric Pulse"
     weapon.abbr = nil
     weapon.shortrange = -1
     weapon.mediumrange = -1
     weapon.longrange = -1
     weapon.maxrange = -1
      weapon.shortrangemod = -1
       weapon.mediumrangemod = -1
       weapon.longrangemod = -1
       weapon.maxrangemod = -1
     weapon.damage = "-"
     weapon.b = "-"
     weapon.ammo ="-"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = true;
     weapon.save
     epulse = weapon
     
     weapon = Weapon.new
     weapon.name = "E/M Close Combat Weapon"
     weapon.abbr = "E/M CCW"
     weapon.shortrange = -1
     weapon.mediumrange = -1
     weapon.longrange = -1
     weapon.maxrange = -1
      weapon.shortrangemod = -1
       weapon.mediumrangemod = -1
       weapon.longrangemod = -1
       weapon.maxrangemod = -1
     weapon.damage = "PH"
     weapon.b = "-"
     weapon.ammo ="N+E/M(12)"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = true;
     weapon.save
     emccw = weapon
     
     weapon = Weapon.new
     weapon.name = "Explosive Close Combat Weapon"
     weapon.abbr = "EXP CCW"
     weapon.shortrange = -1
     weapon.mediumrange = -1
     weapon.longrange = -1
     weapon.maxrange = -1
      weapon.shortrangemod = -1
       weapon.mediumrangemod = -1
       weapon.longrangemod = -1
       weapon.maxrangemod = -1
     weapon.damage = "PH"
     weapon.b = "-"
     weapon.ammo ="EXP"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = true;
     weapon.save
     expccw = weapon
     
     weapon = Weapon.new
     weapon.name = "Knife"
     weapon.abbr = nil
     weapon.shortrange = -1
     weapon.mediumrange = -1
     weapon.longrange = -1
     weapon.maxrange = -1
      weapon.shortrangemod = -1
       weapon.mediumrangemod = -1
       weapon.longrangemod = -1
       weapon.maxrangemod = -1
     weapon.damage = "PH-2"
     weapon.b = "-"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = true;
     weapon.save
     knife = weapon
     
     
     weapon = Weapon.new
     weapon.name = "Monofilament Close Combat Weapon"
     weapon.abbr = "MF CCW"
     weapon.shortrange = -1
     weapon.mediumrange = -1
     weapon.longrange = -1
     weapon.maxrange = -1
      weapon.shortrangemod = -1
       weapon.mediumrangemod = -1
       weapon.longrangemod = -1
       weapon.maxrangemod = -1
     weapon.damage = "12"
     weapon.b = "-"
     weapon.ammo ="Monofilament"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = true;
     weapon.save
     mfccw = weapon
     
     weapon = Weapon.new
     weapon.name = "Shock Close Combat Weapon"
     weapon.abbr = "SH CCW"
     weapon.shortrange = 1
     weapon.mediumrange = 1
     weapon.longrange = 1
     weapon.maxrange = 1
      weapon.shortrangemod = -1
       weapon.mediumrangemod = -1
       weapon.longrangemod = -1
       weapon.maxrangemod = -1
     weapon.damage = "PH"
     weapon.b = "-"
     weapon.ammo ="Shock"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = true;
     weapon.save
     shockccw = weapon
     
     weapon = Weapon.new
     weapon.name = "Adhesive Launcher"
     weapon.abbr = "ADHL"
     weapon.shortrange = 4
      weapon.shortrangemod = 0
     weapon.mediumrange = 16
      weapon.mediumrangemod = 3
     weapon.longrange = 24
      weapon.longrangemod = -3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "-"
     weapon.b = "1"
     weapon.ammo ="Adhesive"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     adhl = weapon
     
     weapon = Weapon.new
     weapon.name = "Antipersonnel Mines"
     weapon.abbr = "ADHL"
      weapon.shortrange = -1
        weapon.shortrangemod = -1
       weapon.mediumrange = -1
        weapon.mediumrangemod = -1
       weapon.longrange = -1
        weapon.longrangemod = -1
       weapon.maxrange = -1
       weapon.maxrangemod = -1
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="Shock"
     weapon.template = "Circular / Small Teardrop"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     apmines = weapon
     
     weapon = Weapon.new
     weapon.name = "AP Heavy Machine Gun"
     weapon.abbr = "AP HMG"
      weapon.shortrange = 8
        weapon.shortrangemod = 0
       weapon.mediumrange = 32
        weapon.mediumrangemod = 3
       weapon.longrange = 48
        weapon.longrangemod = -3
       weapon.maxrange = 96
       weapon.maxrangemod = -6
     weapon.damage = "15"
     weapon.b = "4"
     weapon.ammo ="AP"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     aphmg = weapon
     
     weapon = Weapon.new
     weapon.name = "AP Rifle"
     weapon.abbr = nil  
      weapon.shortrange = 8
        weapon.shortrangemod = 0
       weapon.mediumrange = 16
        weapon.mediumrangemod = 3
       weapon.longrange = 24
        weapon.longrangemod = -3
       weapon.maxrange = 48
       weapon.maxrangemod = -6
     weapon.damage = "13"
     weapon.b = "3"
     weapon.ammo ="AP"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     aprifle = weapon
     
     weapon = Weapon.new
     weapon.name = "AP Sniper Rifle"
     weapon.abbr = "AP Sniper"
      weapon.shortrange = 12
        weapon.shortrangemod = 0
       weapon.mediumrange = 36
        weapon.mediumrangemod = 3
       weapon.longrange = 52
        weapon.longrangemod = -3
       weapon.maxrange = 104
       weapon.maxrangemod = -6
     weapon.damage = "15"
     weapon.b = "2"
     weapon.ammo ="AP"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     apsniperrifle = weapon
     
     weapon = Weapon.new
     weapon.name = "Autocannon"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 32
     weapon.mediumrangemod = +3
     weapon.longrange = 48
     weapon.longrangemod = -3
     weapon.maxrange = 96
     weapon.maxrangemod = -6
     weapon.damage = "15"
     weapon.b = "2"
     weapon.ammo ="AP"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     autocannon = weapon
     
     weapon = Weapon.new
     weapon.name = "Boarding Shotgun"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 3
     weapon.mediumrange = 16
     weapon.mediumrangemod = 0
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "14"
     weapon.b = "2"
     weapon.ammo ="N/AP"
     weapon.template = "Small Teardrop"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     boardingsg = weapon
     weapon = Weapon.new
     weapon.name = "Chain Rifle"
     weapon.abbr = nil
     weapon.shortrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrange = -1
     weapon.mediumrangemod = -1
     weapon.longrange = -1
     weapon.longrangemod = -1
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="N"
     weapon.template = "Large Teardrop"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     chainrifle = weapon
     weapon = Weapon.new
     weapon.name = "Combi Rifle"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 3
     weapon.mediumrange = 16
     weapon.mediumrangemod = 3
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "13"
     weapon.b = "3"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     combirifle = weapon
     weapon = Weapon.new
     weapon.name = "D-Charges"
     weapon.abbr = nil
     weapon.shortrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrange = -1
     weapon.mediumrangemod = -1
     weapon.longrange = -1
     weapon.longrangemod = -1
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "14"
     weapon.b = "1"
     weapon.ammo ="AP+EXP"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = true;
     weapon.save
     dcharge = weapon
     
     weapon = Weapon.new
     weapon.name = "E/M Light Grenade Launcher"
     weapon.abbr = "E/M Light GL"
     weapon.shortrange = 4
     weapon.shortrangemod = 0
     weapon.mediumrange = 16
     weapon.mediumrangemod = 3
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="E/M"
     weapon.template = "Circular"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     emlightgl = weapon
     
     weapon = Weapon.new
     weapon.name = "E/Marat"
     weapon.abbr = nil
     weapon.shortrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrange = -1
     weapon.mediumrangemod = -1
     weapon.longrange = -1
     weapon.longrangemod = -1
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="E/M"
     weapon.template = "Circular"
     weapon.emvul = true;
     weapon.cc = true;
     weapon.save
     emarat = weapon
     
     weapon = Weapon.new
     weapon.name = "E/Mauler"
     weapon.abbr = nil
     weapon.shortrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrange = -1
     weapon.mediumrangemod = -1
     weapon.longrange = -1
     weapon.longrangemod = -1
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="E/M"
     weapon.template = "Circular"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     emauler = weapon
     
     weapon = Weapon.new
     weapon.name = "Forward Observer"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 3
     weapon.mediumrange = 32
     weapon.mediumrangemod = 0
     weapon.longrange = 48
     weapon.longrangemod = -3
     weapon.maxrange = 96
     weapon.maxrangemod = -6
     weapon.damage = "-"
     weapon.b = "1"
     weapon.ammo ="-"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     fo = weapon
     
     weapon = Weapon.new
     weapon.name = "EM Grenade"
     weapon.abbr = nil
     weapon.shortrange = 4
     weapon.shortrangemod = 3
     weapon.mediumrange = 8
     weapon.mediumrangemod = 0
     weapon.longrange = 12
     weapon.longrangemod = -3
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="EM"
     weapon.template = "Circular"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     emgrenade = weapon
     
     weapon = Weapon.new
      weapon.name = "Grenade"
      weapon.abbr = nil
      weapon.shortrange = 4
      weapon.shortrangemod = 3
      weapon.mediumrange = 8
      weapon.mediumrangemod = 0
      weapon.longrange = 12
      weapon.longrangemod = -3
      weapon.maxrange = -1
      weapon.maxrangemod = -1
      weapon.damage = "13"
      weapon.b = "1"
      weapon.ammo ="N"
      weapon.template = "Circular"
      weapon.emvul = false;
      weapon.cc = false;
      weapon.save
      grenade = weapon
     
     weapon = Weapon.new
     weapon.name = "Guided Missle Launcher"
     weapon.abbr = "Guided ML"
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 32
     weapon.mediumrangemod = 3
     weapon.longrange = 48
     weapon.longrangemod = -3
     weapon.maxrange = 96
     weapon.maxrangemod = -6
     weapon.damage = "14"
     weapon.b = "1"
     weapon.ammo ="AP+EXP"
     weapon.template = "Circular"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     guidedml = weapon
     
     weapon = Weapon.new
     weapon.name = "Heavy Flamethrower"
     weapon.abbr = "Heavy FT"
     weapon.shortrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrange = -1
     weapon.mediumrangemod = -1
     weapon.longrange = -1
     weapon.longrangemod = -1
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "14"
     weapon.b = "1"
     weapon.ammo ="FIRE"
     weapon.template = "Large Teardrop"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     heavyft = weapon
     
     weapon = Weapon.new
     weapon.name = "Heavy Grenade Launcher"
     weapon.abbr = "Heavy GL"
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 32
     weapon.mediumrangemod = 3
     weapon.longrange = 48
     weapon.longrangemod = -3
     weapon.maxrange = 96
     weapon.maxrangemod = -6
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     heavygl = weapon
     
     weapon = Weapon.new
     weapon.name = "Heavy Machine Gun"
     weapon.abbr = "HMG"
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 32
     weapon.mediumrangemod = 3
     weapon.longrange = 48
     weapon.longrangemod = -3
     weapon.maxrange = 96
     weapon.maxrangemod = -6
     weapon.damage = "15"
     weapon.b = "4"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     hmg = weapon
     
     weapon = Weapon.new
     weapon.name = "Heavy Shotgun"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 3
     weapon.mediumrange = 16
     weapon.mediumrangemod = 0
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "15"
     weapon.b = "2"
     weapon.ammo ="N/AP"
     weapon.template = "Small Teardrop"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     heavysg = weapon
     
     weapon = Weapon.new
     weapon.name = "Hyper-rapid Magnetic Cannon"
     weapon.abbr = "HMC"
     weapon.shortrange = 12
     weapon.shortrangemod = 0
     weapon.mediumrange = 36
     weapon.mediumrangemod = 3
     weapon.longrange = 52
     weapon.longrangemod = -3
     weapon.maxrange = 104
     weapon.maxrangemod = -6
     weapon.damage = "15"
     weapon.b = "5"
     weapon.ammo ="AP"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     hmc = weapon
     
     weapon = Weapon.new
     weapon.name = "Light Grenade Launcher"
     weapon.abbr = "Light GL"
     weapon.shortrange = 4
     weapon.shortrangemod = 0
     weapon.mediumrange = 16
     weapon.mediumrangemod = 3
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="N"
     weapon.template = "Circular"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     lightgl = weapon;
     
     weapon = Weapon.new
     weapon.name = "Light Flamethrower"
     weapon.abbr = "Light FT"
     weapon.shortrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrange = -1
     weapon.mediumrangemod = -1
     weapon.longrange = -1
     weapon.longrangemod = -1
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="FIRE"
     weapon.template = "Small Teardrop"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     lightft = weapon
     
     weapon = Weapon.new
     weapon.name = "Light Shotgun"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 3
     weapon.mediumrange = 16
     weapon.mediumrangemod = 0
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "13"
     weapon.b = "2"
     weapon.ammo ="N"
     weapon.template = "Small Teardrop"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     lightsg = weapon
     
     weapon = Weapon.new
     weapon.name = "Missile Launcher"
     weapon.abbr = "ML"
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 32
     weapon.mediumrangemod = 3
     weapon.longrange = 48
     weapon.longrangemod = -3
     weapon.maxrange = 96
     weapon.maxrangemod = -6
     weapon.damage = "14"
     weapon.b = "1"
     weapon.ammo ="AP+EXP"
     weapon.template = "Circular"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     missilelauncher = weapon
     
     weapon = Weapon.new
     weapon.name = "Monofilament Mines"
     weapon.abbr = "MF Mines"
     weapon.shortrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrange = -1
     weapon.mediumrangemod = -1
     weapon.longrange = -1
     weapon.longrangemod = -1
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "12"
     weapon.b = "1"
     weapon.ammo ="Monofilament"
     weapon.template = "Circular/Small Teardrop"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     mfmines = weapon
     
     weapon = Weapon.new
     weapon.name = "MULTI Heavy Machine Gun"
     weapon.abbr = "MULTI HMG"
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 32
     weapon.mediumrangemod = 3
     weapon.longrange = 48
     weapon.longrangemod = -3
     weapon.maxrange = 96
     weapon.maxrangemod = -6
     weapon.damage = "15"
     weapon.b = "4/2/1"
     weapon.ammo ="N/AP/EXP"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     multihmg = weapon
     
     weapon = Weapon.new
     weapon.name = "MULTI Rifle"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 3
     weapon.mediumrange = 16
     weapon.mediumrangemod = -3
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "13"
     weapon.b = "3/2/1"
     weapon.ammo ="N/AP/DA"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     multirifle=weapon
     
     weapon = Weapon.new
     weapon.name = "MULTI Sniper Rifle"
     weapon.abbr = nil
     weapon.shortrange = 12
     weapon.shortrangemod = 0
     weapon.mediumrange = 36
     weapon.mediumrangemod = 3
     weapon.longrange = 52
     weapon.longrangemod = -3
     weapon.maxrange = 104
     weapon.maxrangemod = -6
     weapon.damage = "15"
     weapon.b = "2"
     weapon.ammo ="AP/DA"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     multisniperrifle = weapon
     
     weapon = Weapon.new
     weapon.name = "Nanopulser"
     weapon.abbr = nil
     weapon.shortrange = -1
     weapon.shortrangemod = -1
     weapon.mediumrange = -1
     weapon.mediumrangemod = -1
     weapon.longrange = -1
     weapon.longrangemod = -1
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "13"
     weapon.b = "1"
     weapon.ammo ="Nanotech"
     weapon.template = "Small Teardrop"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     nanopulser = weapon
     
     weapon = Weapon.new
     weapon.name = "Ojotnik"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 16
     weapon.mediumrangemod = 3
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "14"
     weapon.b = "2"
     weapon.ammo ="AP"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     ojotnik  =weapon
     
     weapon = Weapon.new
     weapon.name = "Panzerfaust"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 32
     weapon.mediumrangemod = 3
     weapon.longrange = 48
     weapon.longrangemod = -3
     weapon.maxrange = 96
     weapon.maxrangemod = -6
     weapon.damage = "14"
     weapon.b = "1 (2 uses)"
     weapon.ammo ="AP+EXP"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     panzerfaust = weapon
     
     weapon = Weapon.new
     weapon.name = "Pistol"
     weapon.abbr = nil
     weapon.shortrange = 4
     weapon.shortrangemod = 3
     weapon.mediumrange = 8
     weapon.mediumrangemod = 0
     weapon.longrange = 12
     weapon.longrangemod = -3
     weapon.maxrange = 24
     weapon.maxrangemod = -6
     weapon.damage = "11"
     weapon.b = "2"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = true;
     weapon.save
     pistol = weapon;
     
     
     weapon = Weapon.new
     weapon.name = "Plasma Rifle"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 3
     weapon.mediumrange = 16
     weapon.mediumrangemod = 3
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "14"
     weapon.b = "3"
     weapon.ammo ="Plasma"
     weapon.template = "Circular/Small Teardrop"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     plasmarifle = weapon
     
     weapon = Weapon.new
     weapon.name = "Rifle"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 16
     weapon.mediumrangemod = 3
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "13"
     weapon.b = "3"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     rifle = weapon
     
     
     weapon = Weapon.new
     weapon.name = "Smoke Light Grenade Launcher"
     weapon.abbr = "Smoke Light GL"
     weapon.shortrange = 4
     weapon.shortrangemod = 0
     weapon.mediumrange = 16
     weapon.mediumrangemod = 3
     weapon.longrange = 24
     weapon.longrangemod = -3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "-"
     weapon.b = "1"
     weapon.ammo ="SMOKE"
     weapon.template = "Circular"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     smokelightgl = weapon
     
     weapon = Weapon.new
     weapon.name = "Smoke Grenade"
     weapon.abbr = nil
     weapon.shortrange = 4
     weapon.shortrangemod = 3
     weapon.mediumrange = 8
     weapon.mediumrangemod = 0
     weapon.longrange = 12
     weapon.longrangemod = -3
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "-"
     weapon.b = "1"
     weapon.ammo ="SMOKE"
     weapon.template = "Circular"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     smokegrenade = weapon
     
     weapon = Weapon.new
     weapon.name = "Sniper Rifle"
     weapon.abbr = nil
     weapon.shortrange = 12
     weapon.shortrangemod = 0
     weapon.mediumrange = 36
     weapon.mediumrangemod = 3
     weapon.longrange = 52
     weapon.longrangemod = -3
     weapon.maxrange = 104
     weapon.maxrangemod = -6
     weapon.damage = "15"
     weapon.b = "2"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     sniperrifle = weapon
     
     weapon = Weapon.new
     weapon.name = "Assault Pistol"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 3
     weapon.mediumrange = 16
     weapon.mediumrangemod = -6
     weapon.longrange = -1
     weapon.longrangemod =-1
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "13"
     weapon.b = "4"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = true;
     weapon.save
     assaultpistol = weapon
     
     weapon = Weapon.new
     weapon.name = "D.E.P."
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 3
     weapon.mediumrange = 16
     weapon.mediumrangemod = 0
     weapon.longrange = 24
     weapon.longrangemod =-3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "14"
     weapon.b = "1 (1 Use)"
     weapon.ammo ="AP+EXP"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     dep = weapon
     
     
     weapon = Weapon.new
     weapon.name = "E/Mitter"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 16
     weapon.mediumrangemod = 0
     weapon.longrange = 24
     weapon.longrangemod =-3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "14"
     weapon.b = "1"
     weapon.ammo ="E/M"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     emitter = weapon
     
     weapon = Weapon.new
     weapon.name = "Feuerbach"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 16
     weapon.mediumrangemod = 0
     weapon.longrange = 24
     weapon.longrangemod =-3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "14"
     weapon.b = "2"
     weapon.ammo ="AP+DA"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     feuerbach = weapon
     
     weapon = Weapon.new
     weapon.name = "Marker"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 24
     weapon.mediumrangemod = +3
     weapon.longrange = 32
     weapon.longrangemod =-3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "-"
     weapon.b = "1(2 uses)"
     weapon.ammo ="Dep. Repeater"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     marker = weapon
     
     
     weapon = Weapon.new
     weapon.name = "Mk12"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 24
     weapon.mediumrangemod = +3
     weapon.longrange = 32
     weapon.longrangemod =-3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "15"
     weapon.b = "3"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     mk12 = weapon
     
     weapon = Weapon.new
     weapon.name = "Spitfire"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = +3
     weapon.mediumrange = 24
     weapon.mediumrangemod = +3
     weapon.longrange = 32
     weapon.longrangemod =-3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "14"
     weapon.b = "4"
     weapon.ammo ="N"
     weapon.template = "No"
     weapon.emvul = true;
     weapon.cc = false;
     weapon.save
     spitfire = weapon
     
     
     weapon = Weapon.new
     weapon.name = "T2 Boarding Shotgun"
     weapon.abbr = "T2 Boarding SG"
     weapon.shortrange = 8
     weapon.shortrangemod = +3
     weapon.mediumrange = 16
     weapon.mediumrangemod = 0
     weapon.longrange = 24
     weapon.longrangemod =-3
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "14"
     weapon.b = "2"
     weapon.ammo ="N/T2"
     weapon.template = "Small Teardrop"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     t2boardingsg = weapon
     
     weapon = Weapon.new
     weapon.name = "T2 Rifle"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 16
     weapon.mediumrangemod = +3
     weapon.longrange = 24
     weapon.longrangemod =-3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "13"
     weapon.b = "3"
     weapon.ammo ="T2"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     t2rifle = weapon
     
     
     weapon = Weapon.new
     weapon.name = "Viral Rifle"
     weapon.abbr = nil
     weapon.shortrange = 8
     weapon.shortrangemod = 0
     weapon.mediumrange = 16
     weapon.mediumrangemod = +3
     weapon.longrange = 24
     weapon.longrangemod =-3
     weapon.maxrange = 48
     weapon.maxrangemod = -6
     weapon.damage = "13"
     weapon.b = "3"
     weapon.ammo ="Viral"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     viralrifle = weapon
     
     
     weapon = Weapon.new
     weapon.name = "Viral Sniper Rifle"
     weapon.abbr = nil
     weapon.shortrange = 12
     weapon.shortrangemod = 0
     weapon.mediumrange = 36
     weapon.mediumrangemod = +3
     weapon.longrange = 52
     weapon.longrangemod =-3
     weapon.maxrange = 104
     weapon.maxrangemod = -6
     weapon.damage = "15"
     weapon.b = "2"
     weapon.ammo ="Viral"
     weapon.template = "No"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     viralsniperrifle = weapon
     
     
     weapon = Weapon.new
     weapon.name = "Zero-V Smoke Grenade"
     weapon.abbr = "Z-V Smoke Grenade"
     weapon.shortrange = 4
     weapon.shortrangemod = +3
     weapon.mediumrange = 8
     weapon.mediumrangemod = 0
     weapon.longrange = 12
     weapon.longrangemod =-3
     weapon.maxrange = -1
     weapon.maxrangemod = -1
     weapon.damage = "-"
     weapon.b = "1"
     weapon.ammo ="Zero-V Smoke"
     weapon.template = "Circular"
     weapon.emvul = false;
     weapon.cc = false;
     weapon.save
     zerovsmokegrenade = weapon
     #start adding all the units
      

      @unit = Unit.new
      @unit.name ="Line Kazak";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 11;
      @unit.wip = 13;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.unit_type_id = 1;
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = nil
      @unit.save
###   Rifle
      @unitopt = UnitOption.new
      @unitopt.name ="Rifle"
      @unitopt.swc=0.0
      @unitopt.cost=9
      @unitopt.unit_id = @unit.id
      @unitopt.save
      
      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
###      AP HMG
      @unitopt = UnitOption.new
      @unitopt.name ="AP HMG"
     
      @unitopt.swc=1
      @unitopt.cost=27
      @unitopt.unit_id = @unit.id
      @unitopt.save
      #knife
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = knife.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
      #aphmg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aphmg.id
      @unitweapon.save
      
###      #Rifile GL
      
      @unitopt = UnitOption.new
      @unitopt.name ="Rifle + Light GL"
     
      @unitopt.swc=1
      @unitopt.cost=14
      @unitopt.unit_id = @unit.id
      @unitopt.save
      
      #knife
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = knife.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      #light GL
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightgl.id
      @unitweapon.save
      
###      Sniper Rifle
      
      @unitopt = UnitOption.new
      @unitopt.name ="Sniper Rifle"
      
      @unitopt.swc=0.5
      @unitopt.cost=18
      @unitopt.unit_id = @unit.id
      @unitopt.save
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
      #sniper rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = sniperrifle.id
      @unitweapon.save
      
###     Missile Launcher 
      @unitopt = UnitOption.new
      @unitopt.name ="Missile Launcher"
     
      @unitopt.swc=1
      @unitopt.cost=28
      @unitopt.unit_id = @unit.id
      @unitopt.save

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
      #missile launcher
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = missilelauncher.id
      @unitweapon.save
 ###   Forward Observer     
      @unitopt = UnitOption.new
      @unitopt.name ="Forward Observer"
     
      @unitopt.swc=0
      @unitopt.cost=12
      @unitopt.unit_id = @unit.id
      @unitopt.save
      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
###   Paramedic
      @unitopt = UnitOption.new
      @unitopt.name ="Paramedic"
      
      @unitopt.swc=0
      @unitopt.cost=13
      @unitopt.unit_id = @unit.id
      @unitopt.save
      
      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
###   LT
     @unitopt = UnitOption.new
     @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
     @unitopt.swc=1
     @unitopt.cost=9
     @unitopt.unit_id = @unit.id
     @unitopt.save
     
     #rifle
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = rifle.id
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
 ##################### Caledonian Volunteers ############
       @unit = Unit.new
       @unit.name ="Caledonian Volunteer";
       @unit.army_id = @ariadna.id;
       @unit.mov1 = 4;
       @unit.mov2 = 4;
       @unit.cc = 13;
       @unit.bs = 10;
       @unit.ph = 11;
       @unit.wip = 12;
       @unit.arm = 1;
       @unit.bts = 0;
       @unit.w = 1;
       @unit.avail = 2
       @unit.unit_type_id = 1;
       @unit.regular = true
       @unit.impetuous = 0
       @unit.cube = false
       @unit.skills = "Multiterrain (Mountain Jungle)"
       @unit.save
       ###   Rifle
       @unitopt = UnitOption.new
       @unitopt.name =""
       @unitopt.swc=0.0
       @unitopt.cost=8
       @unitopt.unit_id = @unit.id
       @unitopt.save

       #rifle
       @unitweapon = UnitOptionWeapon.new
       @unitweapon.unit_option_id = @unitopt.id
       @unitweapon.weapon_id = rifle.id
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
       
       ###  Chain Rifle
       @unitopt = UnitOption.new
       @unitopt.name =""
       @unitopt.swc=0.0
       @unitopt.cost=6
       @unitopt.unit_id = @unit.id
       @unitopt.save

       #chain rifle
       @unitweapon = UnitOptionWeapon.new
       @unitweapon.unit_option_id = @unitopt.id
       @unitweapon.weapon_id = chainrifle.id
       @unitweapon.save
       
       #light sg
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
       
       
       
       ###  HMG 
       @unitopt = UnitOption.new
       @unitopt.name =""
       @unitopt.swc=0.5
       @unitopt.cost=20
       @unitopt.unit_id = @unit.id
       @unitopt.save

       #hmg
       @unitweapon = UnitOptionWeapon.new
       @unitweapon.unit_option_id = @unitopt.id
       @unitweapon.weapon_id = hmg.id
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
       
       ###  Rifle dcharge
       @unitopt = UnitOption.new
       @unitopt.name ="CH:Limited Camo, Inferior Infiltration"
       @unitopt.swc=0.0
       @unitopt.cost=11
       @unitopt.unit_id = @unit.id
       @unitopt.save

       # rifle
       @unitweapon = UnitOptionWeapon.new
       @unitweapon.unit_option_id = @unitopt.id
       @unitweapon.weapon_id = rifle.id
       @unitweapon.save
       
       #dcharge
       @unitweapon = UnitOptionWeapon.new
       @unitweapon.unit_option_id = @unitopt.id
       @unitweapon.weapon_id = dcharge.id
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
       
       
       ###  Paramedic
       @unitopt = UnitOption.new
       @unitopt.name ="Medkit"
       @unitopt.swc=0.0
       @unitopt.cost=13
       @unitopt.unit_id = @unit.id
       @unitopt.save

       # rifle
       @unitweapon = UnitOptionWeapon.new
       @unitweapon.unit_option_id = @unitopt.id
       @unitweapon.weapon_id = rifle.id
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
       
       ###  Lieutenant
       @unitopt = UnitOption.new
       @unitopt.name ="Lieutenant"
       @unitopt.swc=2.0
       @unitopt.cost=8
       @unitopt.unit_id = @unit.id
       @unitopt.save
       @unitopt.lt = true;

       # rifle
       @unitweapon = UnitOptionWeapon.new
       @unitweapon.unit_option_id = @unitopt.id
       @unitweapon.weapon_id = rifle.id
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
      
 ############# PARA COMMANDOS #########################     
      
      @unit = Unit.new
      @unit.name ="Para Commandos";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 12;
      @unit.ph = 11;
      @unit.wip = 14;
      @unit.arm = 2;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 4
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "CH: Mimetism  AD: Parachutist"
      @unit.unit_type_id = 1;
      @unit.save
      
      
      ###  Rifle
      @unitopt = UnitOption.new
      @unitopt.name ="Rifle"
      
      @unitopt.swc=0.0
      @unitopt.cost=20
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
      
      
      
      
###  HMG
      @unitopt = UnitOption.new
      @unitopt.name ="HMG"
     
      @unitopt.swc=1
      @unitopt.cost=32
      @unitopt.unit_id = @unit.id
      @unitopt.save
      #knife
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = knife.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
      #hmg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save
      
 
      ###      #Rifile GL

            @unitopt = UnitOption.new
            @unitopt.name ="Rifle + Light GL"
            
            @unitopt.swc=1
            @unitopt.cost=25
            @unitopt.unit_id = @unit.id
            @unitopt.save

            #knife
            @unitweapon = UnitOptionWeapon.new
            @unitweapon.unit_option_id = @unitopt.id
            @unitweapon.weapon_id = knife.id
            @unitweapon.save
            #pistol
            @unitweapon = UnitOptionWeapon.new
            @unitweapon.unit_option_id = @unitopt.id
            @unitweapon.weapon_id = pistol.id
            @unitweapon.save
            #rifle
            @unitweapon = UnitOptionWeapon.new
            @unitweapon.unit_option_id = @unitopt.id
            @unitweapon.weapon_id = rifle.id
            @unitweapon.save
            #light GL
            @unitweapon = UnitOptionWeapon.new
            @unitweapon.unit_option_id = @unitopt.id
            @unitweapon.weapon_id = lightgl.id
            @unitweapon.save

      ###      Sniper Rifle

            @unitopt = UnitOption.new
            @unitopt.name ="Sniper Rifle"
            
            @unitopt.swc=0.5
            @unitopt.cost=29
            @unitopt.unit_id = @unit.id
            @unitopt.save
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
            #sniper rifle
            @unitweapon = UnitOptionWeapon.new
            @unitweapon.unit_option_id = @unitopt.id
            @unitweapon.weapon_id = sniperrifle.id
            @unitweapon.save
      
            ###   Forward Observer     
      @unitopt = UnitOption.new
      @unitopt.name ="Forward Observer"
      
      @unitopt.swc=0
      @unitopt.cost=23
      @unitopt.unit_id = @unit.id
      @unitopt.save
      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
###   Paramedic
      @unitopt = UnitOption.new
      @unitopt.name ="Paramedic"
     
      @unitopt.swc=0
      @unitopt.cost=24
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
###   LT
     @unitopt = UnitOption.new
     @unitopt.name ="Lieutenant"
     @unitopt.lt = true;
     @unitopt.swc=1
     @unitopt.cost=20
     @unitopt.unit_id = @unit.id
     @unitopt.save

     #rifle
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = rifle.id
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
  
############# Tank Hunters #########################     

     @unit = Unit.new
     @unit.name ="Tank Hunter";
     @unit.army_id = @ariadna.id;
     @unit.mov1 = 4;
     @unit.mov2 = 2;
     @unit.cc = 14;
     @unit.bs = 12;
     @unit.ph = 14;
     @unit.wip = 14;
     @unit.arm = 3;
     @unit.bts = 0;
     @unit.w = 1;
     @unit.avail = 3
     @unit.regular = true
     @unit.impetuous = 0
     @unit.cube = false
     @unit.skills = "CH: Camouflage"
     @unit.unit_type_id = 2;
     @unit.save
    
     ###  Tank Hunter AP Rifle AHDL, D 
    @unitopt = UnitOption.new
    @unitopt.name ="ADHL"
    @unitopt.lt = false;
    @unitopt.swc=0
    @unitopt.cost=27
    @unitopt.unit_id = @unit.id
    @unitopt.save

    #aprifle
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = aprifle.id
    @unitweapon.save
    
    #ADHL
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = adhl.id
    @unitweapon.save
    
    #dcharge
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = dcharge.id
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

     ###  Tank Hunter APHMG AHDL, D 
    @unitopt = UnitOption.new
    @unitopt.name ="AP HMG"
    @unitopt.lt = false;
    @unitopt.swc=1.5
    @unitopt.cost=40
    @unitopt.unit_id = @unit.id
    @unitopt.save

    #apHMG
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = aphmg.id
    @unitweapon.save
    
    
    #dcharge
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = dcharge.id
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
      
     ###  Tank Hunter Autocannon
    @unitopt = UnitOption.new
    @unitopt.name ="Autocannon"
    @unitopt.lt = false;
    @unitopt.swc=1.5
    @unitopt.cost=40
    @unitopt.unit_id = @unit.id
    @unitopt.save

    #autocannon
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = autocannon.id
    @unitweapon.save
    
    #dcharge
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = dcharge.id
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
   
     ###  Tank Hunter ML
    @unitopt = UnitOption.new
    @unitopt.name ="ML"
    @unitopt.lt = false;
    @unitopt.swc=1.5
    @unitopt.cost=39
    @unitopt.unit_id = @unit.id
    @unitopt.save

    #autocannon
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = missilelauncher.id
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
    
     ###  Tank Hunter AP sniper rifle
    @unitopt = UnitOption.new
    @unitopt.name ="AP Sniper"
    @unitopt.lt = false;
    @unitopt.swc=1
    @unitopt.cost=33
    @unitopt.unit_id = @unit.id
    @unitopt.save

    #ap sniper rifle
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = apsniperrifle.id
    @unitweapon.save
    
    #dcharge
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = dcharge.id
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

     ###  Tank Hunter LT
    @unitopt = UnitOption.new
    @unitopt.name ="Lieutenant"
    @unitopt.lt = true;
    @unitopt.swc=1.0
    @unitopt.cost=27
    @unitopt.unit_id = @unit.id
    @unitopt.save

    #aprifle
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = aprifle.id
    @unitweapon.save
    
    #adhl
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = adhl.id
    @unitweapon.save
    
    #dcharge
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = dcharge.id
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

    ############# Highlander Grey #########################     

     @unit = Unit.new
     @unit.name ="Highlander Grey";
     @unit.army_id = @ariadna.id;
     @unit.mov1 = 10;
     @unit.mov2 = 10;
     @unit.cc = 16;
     @unit.bs = 13;
     @unit.ph = 13;
     @unit.wip = 12;
     @unit.arm = 3;
     @unit.bts = 0;
     @unit.w = 1;
     @unit.avail = 2
     @unit.regular = true
     @unit.impetuous = 2
     @unit.cube = false
     @unit.skills = "Shock Immunity, V:Dogged"
     @unit.unit_type_id = 2;
     @unit.save
     
     ###  Highlander rifle SG
     @unitopt = UnitOption.new
     @unitopt.name =""
     @unitopt.lt = false;
     @unitopt.swc=0.0
     @unitopt.cost=30
     @unitopt.unit_id = @unit.id
     @unitopt.save
     #rifle
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = rifle.id
     @unitweapon.save
     #light shotgun
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = lightsg.id
     @unitweapon.save
     
     #light shotgun
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = lightsg.id
     @unitweapon.save
     #grenade
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = grenade.id
     @unitweapon.save
     
     #smoke grenade
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = smokegrenade.id
     @unitweapon.save
     
     #pistol
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = pistol.id
     @unitweapon.save
     #ccw
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = ccw.id
     @unitweapon.save
     
     
     ###  Highlander t2 rifle 
     @unitopt = UnitOption.new
     @unitopt.name =""
     @unitopt.lt = false;
     @unitopt.swc=0.0
     @unitopt.cost=36
     @unitopt.unit_id = @unit.id
     @unitopt.save
     # t2 rifle
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = t2rifle.id
     @unitweapon.save
     #light shotgun
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = lightsg.id
     @unitweapon.save
     
     #light shotgun
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = lightsg.id
     @unitweapon.save
     #grenade
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = grenade.id
     @unitweapon.save
     
     #smoke grenade
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = smokegrenade.id
     @unitweapon.save
     
     #pistol
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = pistol.id
     @unitweapon.save
     #ccw
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = ccw.id
     @unitweapon.save
     
     
     ###  Highlander Grey HMG
     @unitopt = UnitOption.new
     @unitopt.name =""
     @unitopt.lt = false;
     @unitopt.swc=1.5
     @unitopt.cost=40
     @unitopt.unit_id = @unit.id
     @unitopt.save
     # APHMG 
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = aphmg.id
     @unitweapon.save

     
     #smoke grenade
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = smokegrenade.id
     @unitweapon.save
     
     #pistol
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = pistol.id
     @unitweapon.save
     #ccw
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = ccw.id
     @unitweapon.save
     
     
     ###  Highlander Grey t2 boarding shotgun
     @unitopt = UnitOption.new
     @unitopt.name =""
     @unitopt.lt = false;
     @unitopt.swc=0
     @unitopt.cost=28
     @unitopt.unit_id = @unit.id
     @unitopt.save
     # t2 boarding shotgun 
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = t2boardingsg.id
     @unitweapon.save

     # grenade
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = grenade.id
     @unitweapon.save
     
     #smoke grenade
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = smokegrenade.id
     @unitweapon.save
     
     #pistol
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = pistol.id
     @unitweapon.save
     #ccw
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = ccw.id
     @unitweapon.save
  

     ###  Highlander rifle SG
     @unitopt = UnitOption.new
     @unitopt.name ="Lieutenant"
     @unitopt.lt = true;
     @unitopt.swc=0.0
     @unitopt.cost=30
     @unitopt.unit_id = @unit.id
     @unitopt.save
     #rifle
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = rifle.id
     @unitweapon.save
     #light shotgun
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = lightsg.id
     @unitweapon.save
     
     #light shotgun
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = lightsg.id
     @unitweapon.save
     #grenade
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = grenade.id
     @unitweapon.save
     
     #smoke grenade
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = smokegrenade.id
     @unitweapon.save
     
     #pistol
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = pistol.id
     @unitweapon.save
     #ccw
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = ccw.id
     @unitweapon.save

     ############# Chasseurs #########################     

      @unit = Unit.new
      @unit.name ="Chasseurs";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 10;
      @unit.mov2 = 10;
      @unit.cc = 14;
      @unit.bs = 11;
      @unit.ph = 13;
      @unit.wip = 13;
      @unit.arm = 0;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "CH:Camouflage, Infiltration, 6th Sense 2"
      @unit.unit_type_id = 2;
      @unit.save

     ###  Rifle Light FT AP Mines
     @unitopt = UnitOption.new
     @unitopt.name =""
     @unitopt.lt = false;
     @unitopt.swc=0.0
     @unitopt.cost=20
     @unitopt.unit_id = @unit.id
     @unitopt.save

     #rifle
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = rifle.id
     @unitweapon.save
     #light Flame thrower
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = lightft.id
     @unitweapon.save
     
     #AP Mines
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
     
     ###  Sniper
     @unitopt = UnitOption.new
     @unitopt.name =""
     @unitopt.lt = false;
     @unitopt.swc=1.0
     @unitopt.cost=31
     @unitopt.unit_id = @unit.id
     @unitopt.save

     #sniper rifle
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = sniperrifle.id
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
     
     ###  ADHL chasseur
     @unitopt = UnitOption.new
     @unitopt.name =""
     @unitopt.lt = false;
     @unitopt.swc=0.5
     @unitopt.cost=19
     @unitopt.unit_id = @unit.id
     @unitopt.save

     #rifle 
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = rifle.id
     @unitweapon.save

     #ADHL 
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = adhl.id
     @unitweapon.save
    
     #d-charges 
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = dcharge.id
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
  
  
     ###  Minelayer
     @unitopt = UnitOption.new
     @unitopt.name ="Minelayer"
     @unitopt.lt = false;
     @unitopt.swc=0.5
     @unitopt.cost=21
     @unitopt.unit_id = @unit.id
     @unitopt.save

     #rifle
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = rifle.id
     @unitweapon.save
     #light Flame thrower
     @unitweapon = UnitOptionWeapon.new
     @unitweapon.unit_option_id = @unitopt.id
     @unitweapon.weapon_id = lightft.id
     @unitweapon.save
     
     #AP Mines
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
 
    ############# Minutemen #########################     

     @unit = Unit.new
     @unit.name ="Minutemen";
     @unit.army_id = @ariadna.id;
     @unit.mov1 = 4;
     @unit.mov2 = 4;
     @unit.cc = 15;
     @unit.bs = 13;
     @unit.ph = 13;
     @unit.wip = 12;
     @unit.arm = 3;
     @unit.bts = 0;
     @unit.w = 1;
     @unit.avail = 3
     @unit.regular = true
     @unit.impetuous = 0
     @unit.cube = false
     @unit.skills = "Shock Immunity, Jungle Terrain"
     @unit.unit_type_id = 2;
     @unit.save

    ###  Minutemen Light SG
    @unitopt = UnitOption.new
    @unitopt.name ="Rifle Light SG"
    @unitopt.lt = false;
    @unitopt.swc=0.0
    @unitopt.cost=28
    @unitopt.unit_id = @unit.id
    @unitopt.save

    #rifle
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = rifle.id
    @unitweapon.save
    #lightshotgun
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = lightsg.id
    @unitweapon.save
    #pistol
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = pistol.id
    @unitweapon.save

    #ccw
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = ccw.id
    @unitweapon.save

    ###  Minutemen HMG
    @unitopt = UnitOption.new
    @unitopt.name ="HMG"
    @unitopt.lt = false;
    @unitopt.swc=1.5
    @unitopt.cost=36
    @unitopt.unit_id = @unit.id
    @unitopt.save

    #hmg
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = hmg.id
    @unitweapon.save
    #lightshotgun
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = lightsg.id
    @unitweapon.save
    #pistol
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = pistol.id
    @unitweapon.save

    #ccw
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = ccw.id
    @unitweapon.save
    
    
     ###  Minutemen ap rifle
      @unitopt = UnitOption.new
      @unitopt.name ="AP Rifle Light SG"
      @unitopt.lt = false;
      @unitopt.swc=0.0
      @unitopt.cost=34
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #ap rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
      #lightshotgun
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
      
      
      ###  Minutemen panzerfaust
      @unitopt = UnitOption.new
      @unitopt.name ="Panzerfaust"
      @unitopt.lt = false;
      @unitopt.swc=1.0
      @unitopt.cost=31
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      #lightshotgun
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
      
      #panzerfaust
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = panzerfaust.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
      
      
      ###  Minutemen CH camo
      @unitopt = UnitOption.new
      @unitopt.name ="CH:Camouflage"
      @unitopt.lt = false;
      @unitopt.swc=1.0
      @unitopt.cost=34
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      #lightshotgun
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
     
      
      ###  Minutemen LT
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=0
      @unitopt.cost=28
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      #lightshotgun
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
      
      ###  Minutemen MSV 1
      @unitopt = UnitOption.new
      @unitopt.name ="MSV 1"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=31
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      #lightshotgun
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
      
      
      ###  Minutemen paramedic 1
      @unitopt = UnitOption.new
      @unitopt.name ="paramedic"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=32
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      #lightshotgun
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
      
      ###  Minutemen X visor
      @unitopt = UnitOption.new
      @unitopt.name ="X Visor"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=32
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      #lightshotgun
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
      
       ############# Moblot #########################     

         @unit = Unit.new
         @unit.name ="Moblot";
         @unit.army_id = @ariadna.id;
         @unit.mov1 = 4;
         @unit.mov2 = 4;
         @unit.cc = 15;
         @unit.bs = 13;
         @unit.ph = 13;
         @unit.wip = 12;
         @unit.arm = 3;
         @unit.bts = 0;
         @unit.w = 1;
         @unit.avail = 3
         @unit.regular = true
         @unit.impetuous = 0
         @unit.cube = false
         @unit.skills = "Shock Immunity, Jungle Terrain"
         @unit.unit_type_id = 2;
         @unit.save

         ###  Moblot Light SG
        @unitopt = UnitOption.new
        @unitopt.name ="Rifle Light SG"
        @unitopt.lt = false;
        @unitopt.swc=0.0
        @unitopt.cost=28
        @unitopt.unit_id = @unit.id
        @unitopt.save

        #rifle
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = rifle.id
        @unitweapon.save
        #lightshotgun
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = lightsg.id
        @unitweapon.save
        #pistol
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = pistol.id
        @unitweapon.save

        #ccw
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = ccw.id
        @unitweapon.save
 
        ###  Moblot HMG
        @unitopt = UnitOption.new
        @unitopt.name ="HMG"
        @unitopt.lt = false;
        @unitopt.swc=1.5
        @unitopt.cost=36
        @unitopt.unit_id = @unit.id
        @unitopt.save

        #hmg
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = hmg.id
        @unitweapon.save
        #lightshotgun
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = lightsg.id
        @unitweapon.save
        #pistol
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = pistol.id
        @unitweapon.save

        #ccw
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = ccw.id
        @unitweapon.save


         ###  Moblot ap rifle
          @unitopt = UnitOption.new
          @unitopt.name ="AP Rifle Light SG"
          @unitopt.lt = false;
          @unitopt.swc=0.0
          @unitopt.cost=34
          @unitopt.unit_id = @unit.id
          @unitopt.save

          #ap rifle
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = aprifle.id
          @unitweapon.save
          #lightshotgun
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = lightsg.id
          @unitweapon.save
          #pistol
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = pistol.id
          @unitweapon.save

          #ccw
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = ccw.id
          @unitweapon.save


          ###  Moblot panzerfaust
          @unitopt = UnitOption.new
          @unitopt.name ="Panzerfaust"
          @unitopt.lt = false;
          @unitopt.swc=1.0
          @unitopt.cost=31
          @unitopt.unit_id = @unit.id
          @unitopt.save

          #rifle
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = rifle.id
          @unitweapon.save
          #lightshotgun
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = lightsg.id
          @unitweapon.save

          #panzerfaust
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = panzerfaust.id
          @unitweapon.save
          #pistol
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = pistol.id
          @unitweapon.save

          #ccw
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = ccw.id
          @unitweapon.save


          ###  Moblot CH camo
          @unitopt = UnitOption.new
          @unitopt.name ="CH:Mimetism"
          @unitopt.lt = false;
          @unitopt.swc=0
          @unitopt.cost=32
          @unitopt.unit_id = @unit.id
          @unitopt.save

          #rifle
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = rifle.id
          @unitweapon.save
          #lightshotgun
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = lightsg.id
          @unitweapon.save

          #pistol
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = pistol.id
          @unitweapon.save

          #ccw
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = ccw.id
          @unitweapon.save
          ###  Moblot Infiltration
          @unitopt = UnitOption.new
          @unitopt.name ="Infiltration"
          @unitopt.lt = false;
          @unitopt.swc=0
          @unitopt.cost=36
          @unitopt.unit_id = @unit.id
          @unitopt.save

          #rifle
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = rifle.id
          @unitweapon.save
          #lightshotgun
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = lightsg.id
          @unitweapon.save

          #pistol
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = pistol.id
          @unitweapon.save

          #ccw
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = ccw.id
          @unitweapon.save

          ###  Moblot LT
          @unitopt = UnitOption.new
          @unitopt.name ="Lieutenant"
          @unitopt.lt = true;
          @unitopt.swc=0
          @unitopt.cost=28
          @unitopt.unit_id = @unit.id
          @unitopt.save

          #rifle
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = rifle.id
          @unitweapon.save
          #lightshotgun
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = lightsg.id
          @unitweapon.save

          #pistol
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = pistol.id
          @unitweapon.save

          #ccw
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = ccw.id
          @unitweapon.save

          ###  Moblot MSV 1
          @unitopt = UnitOption.new
          @unitopt.name ="MSV 1"
          @unitopt.lt = false;
          @unitopt.swc=0
          @unitopt.cost=31
          @unitopt.unit_id = @unit.id
          @unitopt.save

          #rifle
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = rifle.id
          @unitweapon.save
          #lightshotgun
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = lightsg.id
          @unitweapon.save

          #pistol
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = pistol.id
          @unitweapon.save

          #ccw
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = ccw.id
          @unitweapon.save


          ###  Minutemen paramedic 1
          @unitopt = UnitOption.new
          @unitopt.name ="paramedic"
          @unitopt.lt = false;
          @unitopt.swc=0
          @unitopt.cost=32
          @unitopt.unit_id = @unit.id
          @unitopt.save

          #rifle
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = rifle.id
          @unitweapon.save
          #lightshotgun
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = lightsg.id
          @unitweapon.save

          #pistol
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = pistol.id
          @unitweapon.save

          #ccw
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = ccw.id
          @unitweapon.save

       ############# Veteran Kazaks #########################     

       @unit = Unit.new
       @unit.name ="Veteran Kazak";
       @unit.army_id = @ariadna.id;
       @unit.mov1 = 4;
       @unit.mov2 = 4;
       @unit.cc = 15;
       @unit.bs = 13;
       @unit.ph = 13;
       @unit.wip = 13;
       @unit.arm = 4;
       @unit.bts = 0;
       @unit.w = 1;
       @unit.avail = 2
       @unit.regular = true
       @unit.impetuous = 0
       @unit.cube = false
       @unit.skills = "Shock Immunity, Veteran"
       @unit.unit_type_id = 2;
       @unit.save

       ###  Veteran Light FT
      @unitopt = UnitOption.new
      @unitopt.name ="AP Rifle CH:Mimetism"
      @unitopt.lt = false;
      @unitopt.swc=0.0
      @unitopt.cost=47
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #aprifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
      #light FT
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save     
      
      ###  Veteran AP HMG
      @unitopt = UnitOption.new
      @unitopt.name ="AP HMG CH:Mimetism"
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=61
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #aphmg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aphmg.id
      @unitweapon.save
      #light FT
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
      
      ###  Veteran MSV l1
      @unitopt = UnitOption.new
      @unitopt.name ="MSV 1"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=47
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #aprifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
      #light FT
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save 
      
      ###  Veteran Doctor
      @unitopt = UnitOption.new
      @unitopt.name="Doctor"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=48
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #aprifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
      #light FT
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save    


      ###  Veteran LT
      @unitopt = UnitOption.new
      @unitopt.name ="LT CH:Mimetism"
      @unitopt.lt = true;
      @unitopt.swc=0
      @unitopt.cost=41
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #aprifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
      #light FT
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
      
      ###  Veteran LT AP HMG
      @unitopt = UnitOption.new
      @unitopt.name ="LT AP HMG CH:Mimetism"
      @unitopt.lt = true;
      @unitopt.swc=1
      @unitopt.cost=61
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #aphmg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aphmg.id
      @unitweapon.save
      #light FT
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
      @unitweapon.save
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
      
      ############# Foxtrot Rangers #########################     

      @unit = Unit.new
      @unit.name ="Foxtrot Ranger";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 13;
      @unit.wip = 13;
      @unit.arm = 0;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 3
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "CH:Camouflage, Infiltration"
      @unit.unit_type_id = 3;
      @unit.save   
    
      ###  Foxtrot rifle APmines
      @unitopt = UnitOption.new
      @unitopt.name ="Rifle AP Mines"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=17
      @unitopt.unit_id = @unit.id
      @unitopt.save
      
      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      #ap mines
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
      
      ###  Foxtrot boarding shotgun APmines
      @unitopt = UnitOption.new
      @unitopt.name ="BSG AP Mines"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=20
      @unitopt.unit_id = @unit.id
      @unitopt.save
      
      #boarding shotgun
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save
      #ap mines
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
      
      ###  Foxtrot rifle light gl 
      @unitopt = UnitOption.new
      @unitopt.name ="Rifle Light GL"
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=21
      @unitopt.unit_id = @unit.id
      @unitopt.save
      
      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      #light gl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightgl.id
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
      
      
      ###  Foxtrot sniper apmines
      @unitopt = UnitOption.new
      @unitopt.name ="Sniper AP Mines"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=21
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #sniper rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = sniperrifle.id
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
      
      
      ###  Foxtrot Forward observer 
      @unitopt = UnitOption.new
      @unitopt.name ="Forward Observer"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=20
      @unitopt.unit_id = @unit.id
      @unitopt.save

      #sniper rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
      
      ###  Foxtrot LT 
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=2
      @unitopt.cost=17
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
      
      ############# SAS #########################     

      @unit = Unit.new
      @unit.name ="S.A.S.";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 17;
      @unit.bs = 11;
      @unit.ph = 13;
      @unit.wip = 13;
      @unit.arm = 0;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 2
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "CH:Camouflage, Infiltration, Martial Arts 2"
      @unit.unit_type_id = 3;
      @unit.save     
 
      ###  SAS Rifle 
      @unitopt = UnitOption.new
      @unitopt.name ="Rifle"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=24
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ap ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
      
      ###  SAS Boarding Shotgun 
      @unitopt = UnitOption.new
      @unitopt.name ="Boarding SG"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=27
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # boarding SG
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ap ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save


      ###  SAS sniper Rifle 
      @unitopt = UnitOption.new
      @unitopt.name ="Sniper Rifle"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=36
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # sniper rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = sniperrifle.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ap ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save 
      

      ###  SAS FO 
      @unitopt = UnitOption.new
      @unitopt.name ="Forward Observer"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=30
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ap ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
      
      ###  SAS Rifle 
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=2
      @unitopt.cost=24
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ap ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save    

      ############# Scouts #########################     

      @unit = Unit.new
      @unit.name ="Scout";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 13;
      @unit.wip = 14;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 4
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "CH:Camouflage, Infiltration"
      @unit.unit_type_id = 3;
      @unit.save

      ###  Scout Rifle 
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=26
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # ojotnik
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ojotnik.id
      @unitweapon.save
      
      # ap mines
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

      ###  Scout Rifle 
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=31
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # ojotnik
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ojotnik.id
      @unitweapon.save
      
      # emauler
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

      ###  Scout boardingsg 
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=26
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # ojotnik
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save
      
      # ap mines
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

      ###  Scout sniper Rifle 
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=35
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # ap sniper rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apsniperrifle.id
      @unitweapon.save
      
      # ap mines
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


      ###  Scout Rifle 
      @unitopt = UnitOption.new
      @unitopt.name ="Forward Observer"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=29
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # ojotnik
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ojotnik.id
      @unitweapon.save
      
      # ap mines
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

      ###  Scout Rifle 
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=1
      @unitopt.cost=26
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # ojotnik
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ojotnik.id
      @unitweapon.save
      
      # ap mines
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



      ############# Highlander #########################     

      @unit = Unit.new
      @unit.name ="Highlander";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 18;
      @unit.bs = 10;
      @unit.ph = 14;
      @unit.wip = 14;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = true
      @unit.impetuous = 2
      @unit.cube = false
      @unit.skills = "Berzerk, V:Dogged"
      @unit.unit_type_id = 1;
      @unit.save

      ###  Highlander Rifle 
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=12
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      
      # smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #AP CCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
      
      
      ###  Highlander Rifle 
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=6
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # chain rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = chainrifle.id
      @unitweapon.save
      
      # smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #AP CCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
      
      
      ###  Highlander boardingsg 
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=15
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # boarding sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save
      
      # smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #AP CCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save


      ###  Highlander Rifle 
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=1
      @unitopt.cost=12
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      
      # smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #AP CCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save


      ############# Irmandinhos #########################     

      @unit = Unit.new
      @unit.name ="Irmandinhos";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 17;
      @unit.bs = 10;
      @unit.ph = 14;
      @unit.wip = 13;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 3
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "Booty, Engineer"
      @unit.unit_type_id = 1;
      @unit.save
      
      
      ###  irmandinhos rifle 
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=16
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
      
      # smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
      # dcharge
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = dcharge.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #AP CCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
      
      ###  irmandinhos chain rifle 
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=10
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # chain rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = chainrifle.id
      @unitweapon.save
      
      # smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
      # dcharge
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = dcharge.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #AP CCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save


      ###  irmandinhos boarding sg 
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=19
      @unitopt.unit_id = @unit.id
      @unitopt.save

      # boardingsg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save
      
      # smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
      # dcharge
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = dcharge.id
      @unitweapon.save
      
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #AP CCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save


      ############# Antipode #########################     

      @unit = Unit.new
      @unit.name ="Assault Pack";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 6;
      @unit.mov2 = 6;
      @unit.cc = 18;
      @unit.bs = 0;
      @unit.ph = 14;
      @unit.wip = 13;
      @unit.arm = 0;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = false
      @unit.impetuous = 2
      @unit.cube = false
      @unit.skills = "CH:Camouflage, Sensor, Superjump,Jungle terrain"
      @unit.unit_type_id = 1;
      @unit.save


      ###  assault pack
      @unitopt = UnitOption.new
      @unitopt.name ="Antipode"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=34
      @unitopt.unit_id = @unit.id
      @unitopt.save
      antipode = @unitopt
      # apccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save

      ############# Antipode Controller #########################     

      @unit = Unit.new
      @unit.name ="Controller";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 11;
      @unit.wip = 13;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = ""
      @unit.unit_type_id = 1;
      @isaddon = true;
      @unit.save


      ###  controller
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=0
      @unitopt.unit_id = @unit.id
      @unitopt.parent_unit_option_id = antipode.id
      @unitopt.isaddon = true
      @unitopt.save

      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #smokelight gl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokelightgl.id
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

      
      ############# Dog Warrior  #########################     

      @unit = Unit.new
      @unit.name ="Dog Warrior";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 6;
      @unit.mov2 = 4;
      @unit.cc = 18;
      @unit.bs = 10;
      @unit.ph = 16;
      @unit.wip = 13;
      @unit.arm = 3;
      @unit.bts = 0;
      @unit.w = 3;
      @unit.avail = -1
      @unit.regular = false
      @unit.impetuous = 1
      @unit.cube = false
      @unit.skills = "V:courage Total Immunity Super Jump"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      
      ###  warrior
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=28
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      dogwarrior = @unitopt
      #chain rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = chainrifle.id
      @unitweapon.save

      #chain rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = chainrifle.id
      @unitweapon.save
      
      #grenade 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = grenade.id
      @unitweapon.save
      
      #grenade 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save

      #grenade 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save     
      ############# Dog Face  #########################     

      @unit = Unit.new
      @unit.name ="Dog Face";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 6;
      @unit.mov2 = 4;
      @unit.cc = 18;
      @unit.bs = 10;
      @unit.ph = 16;
      @unit.wip = 13;
      @unit.arm = 3;
      @unit.bts = 0;
      @unit.w = 3;
      @unit.avail = -1
      @unit.regular = false
      @unit.impetuous = 1
      @unit.cube = false
      @unit.skills = "V:courage Total Immunity Super Jump"
      @unit.unit_type_id = 1;
      @isaddon = true;
      @unit.save
      
      
      ###  DogFace
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=0
      @unitopt.unit_id = @unit.id
      @unitopt.parent_unit_option_id = dogwarrior.id
      @unitopt.save
      
      ############# Mirage 5  #########################     

      @unit = Unit.new
      @unit.name ="Mirage 5:Margot";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 14;
      @unit.bs = 14;
      @unit.ph = 12;
      @unit.wip = 13;
      @unit.arm = 3;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "AD:Airbourne Infiltration,Shock Immunity,Multiterrain"
      @unit.unit_type_id = 2;
      @isaddon = true;
      @unit.save
      
      
      ###  Margot Bertheir
      @unitopt = UnitOption.new
      @unitopt.name ="Margot"
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=42
      @unitopt.unit_id = @unit.id
      @unitopt.save
      #ap rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
      
      #lightgl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightgl.id
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


      ############# Mirage 5  Duroc #########################     

      @unit = Unit.new
      @unit.name ="Mirage 5:Duroc";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 6;
      @unit.mov2 = 4;
      @unit.cc = 19;
      @unit.bs = 10;
      @unit.ph = 16;
      @unit.wip = 13;
      @unit.arm = 3;
      @unit.bts = 0;
      @unit.w = 2;
      @unit.avail = 1
      @unit.regular = false
      @unit.impetuous = 1
      @unit.cube = false
      @unit.skills = "AD:Airbourne Infiltration,Martial Arts 2,total Immunity, Super Jump"
      @unit.unit_type_id = 2;
      @isaddon = true;
      @unit.save
      
      
      ###  Margot Bertheir
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=33
      @unitopt.unit_id = @unit.id
      @unitopt.save
      #chain rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
      
      #chain rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
      
      
      #grenades 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = grenade.id
      @unitweapon.save
      #grenades 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save

      #apccww 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
      ############# kazak Doktor  #########################     

      @unit = Unit.new
      @unit.name ="Kazak Doktor";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 11;
      @unit.wip = 13;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "Doctor"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      
      ###  doc
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=13
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
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
	  
 ############# Uxia McNeill  #########################     

      @unit = Unit.new
      @unit.name ="Uxia McNeill";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 17;
      @unit.bs = 11;
      @unit.ph = 13;
      @unit.wip = 13;
      @unit.arm = 0;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 2
      @unit.cube = false
      @unit.skills = "Martial Arts 2, CH:Camouflage,Infiltration,MSV 1"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      
      ###  Uxia
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=28
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #boarding shotgun
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save

      #grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = grenade.id
      @unitweapon.save
	  
      #grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ap ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
	  
	  
 ############# Roger Van Zant  #########################     

      @unit = Unit.new
      @unit.name ="Roger Van Zant";
      @unit.army_id = @ariadna.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 15;
      @unit.bs = 13;
      @unit.ph = 13;
      @unit.wip = 14;
      @unit.arm = 2;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "CH:Mimetism, V:Courage, AD:Tactical Jump"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      
      ###  Zant
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=40
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ap rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save

      #light sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
      	  
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ap ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
	  
      ###  Zant
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=-1
      @unitopt.cost=40
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ap rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save

      #light sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
      	  
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #ap ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save

	  
############# HAQQISLAM START ########################

############# Daylami  #########################     

      @unit = Unit.new
      @unit.name ="Daylami";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 10;
      @unit.ph = 10;
      @unit.wip = 13;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = false
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = ""
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=9
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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
	  
	  
      ###  HMG
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=17
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	 

      #hmg
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
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



      ###  rifle light gl
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=10
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ap rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save

      #light gl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightgl.id
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


      ###  light sg panzerfaust
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=12
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #panzerfaust
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = panzerfaust.id
      @unitweapon.save

      #light sg
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

      ###  rifle light shotgun LT
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=3
      @unitopt.cost=9
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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
	  


############# Ghulam  #########################     

      @unit = Unit.new
      @unit.name ="Ghulam";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 10;
      @unit.wip = 14;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = ""
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=13
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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
	  
	  
      ###  HMG
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=21
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	 

      #hmg
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
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



      ###  rifle light gl
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=14
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ap rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save

      #light gl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightgl.id
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

      ###  missile launcher
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=28
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #missile launcher 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = missilelauncher.id
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


      ###  sniper rifle
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=14
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #sniper rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = sniperrifle.id
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



      ###  light sg panzerfaust
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=16
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #panzerfaust
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = panzerfaust.id
      @unitweapon.save

      #light sg
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



      ###  hacker
      @unitopt = UnitOption.new
      @unitopt.name ="Hacker (hacking device)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=25
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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

      ###  Doctor
      @unitopt = UnitOption.new
      @unitopt.name ="Doctor"
      @unitopt.lt = false;
      @unitopt.swc=0.0
      @unitopt.cost=17
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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



      ###  rifle light shotgun LT
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=0
      @unitopt.cost=9
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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



############# Naffatun  #########################     

      @unit = Unit.new
      @unit.name ="Naffatun";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 10;
      @unit.wip = 14;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = ""
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      

      ###  rifle light FT
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=10
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light ft
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
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

	  
      ###  rifle heavy FT
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=12
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #heavy ft
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = heavyft.id
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
	  
      ###  rifle heavy FT LT
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=2.0
      @unitopt.cost=12
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #heavy ft
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = heavyft.id
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


############# Halqa  #########################     

      @unit = Unit.new
      @unit.name ="Ghulam";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 10;
      @unit.wip = 14;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "Mechanized Deployment"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=16
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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
	  
	  
      ###  HMG
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=24
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	 

      #hmg
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
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



      ###  rifle light gl
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=18
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ap rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save

      #light gl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightgl.id
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

      ###  missile launcher
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=30
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #missile launcher 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = missilelauncher.id
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



      ###  hacker
      @unitopt = UnitOption.new
      @unitopt.name ="Hacker (hacking device)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=28
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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

      ###  Doctor
      @unitopt = UnitOption.new
      @unitopt.name ="Doctor"
      @unitopt.lt = false;
      @unitopt.swc=0.0
      @unitopt.cost=20
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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

      ###  FOrward observer
      @unitopt = UnitOption.new
      @unitopt.name ="Forward Observer"
      @unitopt.lt = false;
      @unitopt.swc=0.0
      @unitopt.cost=19
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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


      ###  rifle light shotgun LT
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=1
      @unitopt.cost=16
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
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


############# Khawarijs  #########################     

      @unit = Unit.new
      @unit.name ="Khawarijs";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 15;
      @unit.bs = 12;
      @unit.ph = 13;
      @unit.wip = 15;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = "Shock Immunity, Super Jump, Religious Troop"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=27
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save

      #grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = grenade.id
      @unitweapon.save
	
      	  
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #CCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
	  
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=29
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save

      #grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = grenade.id
      @unitweapon.save
	
      	  
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #APCCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
	  
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=29
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save

      #grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = grenade.id
      @unitweapon.save
	
      	  
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #shockCCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save
	  
	  
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=27
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

      #light sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save

      #grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = grenade.id
      @unitweapon.save
	
      	  
      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

      #CCW
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save	  
	  
############# Djanbazan  #########################     

      @unit = Unit.new
      @unit.name ="Djanbazan";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 2;
      @unit.cc = 14;
      @unit.bs = 12;
      @unit.ph = 11;
      @unit.wip = 14;
      @unit.arm = 2;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 2
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = "Multiterrian Regeneration MSV 2"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=28
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
	  
	  
      ###  hmg
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=36
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #hmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save
	  
	
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save



      ### sniper rifle
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=33
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #sniper rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = sniperrifle.id
      @unitweapon.save
	  
	  	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
	  
	  
      ###  Hacker
      @unitopt = UnitOption.new
      @unitopt.name ="Hacker(Hacking Device)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=40
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
	  
	  
	  
      ###  Doctor
      @unitopt = UnitOption.new
      @unitopt.name ="Doctor"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=32
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save


      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=28
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save


############# Hassassin Ragiks  #########################     

      @unit = Unit.new
      @unit.name ="Hassassin Ragik";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 2;
      @unit.cc = 14;
      @unit.bs = 12;
      @unit.ph = 12;
      @unit.wip = 15;
      @unit.arm = 2;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 3
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = "AD:Combat Jump, V:Dogged, Religious Troop"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
      
      
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=30
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save


	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save

      ###  hmg
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=38
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #hmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save
	  
	
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save



      ### sniper rifle
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=35
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #sniper rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = sniperrifle.id
      @unitweapon.save
	  
	  	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
	  
	  
      ###  Hacker
      @unitopt = UnitOption.new
      @unitopt.name ="Hacker(Hacking Device)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=40
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
	  
	  
      ###  Lieutanant
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=30
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
	  

############# Janissaries  #########################     

      @unit = Unit.new
      @unit.name ="Janissary";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 2;
      @unit.cc = 15;
      @unit.bs = 13;
      @unit.ph = 14;
      @unit.wip = 14;
      @unit.arm = 4;
      @unit.bts = -3;
      @unit.w = 2;
      @unit.avail = 2
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "Religious Troop"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=45
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ap rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
	  
	  #light sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save

	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save


      
      ### HMG
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=47
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ap rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
	  
	  
	  
      ###  Doctor
      @unitopt = UnitOption.new
      @unitopt.name ="Doctor"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=49
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ap rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
	  
	  #light sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save

	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save


      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=1
      @unitopt.cost=45
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ap rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
	  
	  #light sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save

	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save


############# AHL Fassed  #########################     

      @unit = Unit.new
      @unit.name ="Ahl Fassed";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 2;
      @unit.cc = 15;
      @unit.bs = 13;
      @unit.ph = 14;
      @unit.wip = 14;
      @unit.arm = 4;
      @unit.bts = -3;
      @unit.w = 2;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = ""
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ###  rifle light shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=38
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ap rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
	  
		#light ft
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
      @unitweapon.save

	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save
	  
	  
      ###  hmg
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=43
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #hmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save
	  


	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save

	  
      ### boarding shotgun
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=34
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #boarding sg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save
	  
	
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  

	  #ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save

	  
	  
############# Maghariba  #########################     

      @unit = Unit.new
      @unit.name ="Maghariba";
      @unit.army_id = @haq.id;
      @unit.mov1 = 6;
      @unit.mov2 = 4;
      @unit.cc = 17;
      @unit.bs = 14;
      @unit.ph = 17;
      @unit.wip = 14;
      @unit.arm = 8;
      @unit.bts = -6;
      @unit.w = 3;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = "ECM Braces(2)"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ###  Multhmg heavy ft
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=89
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multihmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multihmg.id
      @unitweapon.save
	  
	  #heavy ft 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = heavyft.id
      @unitweapon.save  
	  
      ###  Multhmg heavy gl
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=97
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multihmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multihmg.id
      @unitweapon.save
	  
	  #heavy gl 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = heavygl.id
      @unitweapon.save  


############# Hunzakuts  #########################     

      @unit = Unit.new
      @unit.name ="Hunzakut";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 12;
      @unit.wip = 14;
      @unit.arm = 0;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = false
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "CH:Camouflage, Infiltration"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Rifle Light Gl Repeater ap mines
	  @unitopt = UnitOption.new
      @unitopt.name ="(Deployable Repeater)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=21
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light gl 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightgl.id
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
	  
      ### Sniper Rifle Repeater ap mines
	  @unitopt = UnitOption.new
      @unitopt.name ="(Deployable Repeater)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=25
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = sniperrifle.id
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
	  
	  
      ### Rifle Light Gl Repeater ap mines
	  @unitopt = UnitOption.new
      @unitopt.name ="(Forward Observer, Deployable Repeater)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=24
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light gl 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightgl.id
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


############# Murabids Tuareg  #########################     

      @unit = Unit.new
      @unit.name ="Murabids Tuareg";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 12;
      @unit.wip = 15;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 2
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "CH:TO Camouflage, Infiltration"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Rifle Light SG ap mines
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=30
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
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

      ###Sniper Rifle ap mines
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=35
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = sniperrifle.id
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

      ### Hacker
	  @unitopt = UnitOption.new
      @unitopt.name ="Hacker (Hacking Device)"
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=42
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
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

      ### Hacker
	  @unitopt = UnitOption.new
      @unitopt.name ="Doctor"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=34
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
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


      ### Hacker
	  @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=30
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
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


############# Hassassin Fiday  #########################     

      @unit = Unit.new
      @unit.name ="Hassassin Fiday";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 17;
      @unit.bs = 11;
      @unit.ph = 12;
      @unit.wip = 15;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "Martial Arts 3, Basic Impersonation, Religious Troop"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Rifle Light SG smoke grenades
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=34
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  #smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save

	  #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #expccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = expccw.id
      @unitweapon.save
	  
      ### Rifle Light SG smoke grenades
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=32
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  #smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save

	  #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #ap ccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save



############# KUM Motorized  #########################     

      @unit = Unit.new
      @unit.name ="KUM Motorized";
      @unit.army_id = @haq.id;
      @unit.mov1 = 8;
      @unit.mov2 = 6;
      @unit.cc = 18;
      @unit.bs = 11;
      @unit.ph = 13;
      @unit.wip = 15;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = false
      @unit.impetuous = 1
      @unit.cube = false
      @unit.skills = "Motorcycle, V:Dogged"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Rifle Light SG smoke grenades
	  @unitopt = UnitOption.new
      @unitopt.name ="mov 4-4"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=21
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  #smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #smoke lightgl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokelightgl.id
      @unitweapon.save

	  #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #shock
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### Rifle Light SG smoke grenades
	  @unitopt = UnitOption.new
      @unitopt.name ="mov 4-4"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=21
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  #smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #smoke lightgl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokelightgl.id
      @unitweapon.save

	  #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #apccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
	  
	  
      ### Rifle Light SG smoke grenades
	  @unitopt = UnitOption.new
      @unitopt.name ="mov 4-4"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=23
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  #smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #smoke lightgl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokelightgl.id
      @unitweapon.save

	  #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #shock
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = expccw.id
      @unitweapon.save



      ### Rifle Light SG smoke grenades
	  @unitopt = UnitOption.new
      @unitopt.name ="mov 4-4"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=11
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = chainrifle.id
      @unitweapon.save
	  
	  
	  #smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #smoke lightgl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokelightgl.id
      @unitweapon.save

	  #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #shock
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save


      ### Rifle Light SG smoke grenades
	  @unitopt = UnitOption.new
      @unitopt.name ="mov 4-4"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=20
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save
	  	  
	  #smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #smoke lightgl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokelightgl.id
      @unitweapon.save

	  #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #shock
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save
	  
      ### Rifle Light SG smoke grenades
	  @unitopt = UnitOption.new
      @unitopt.name ="mov 4-4"
      @unitopt.lt = true;
      @unitopt.swc=2
      @unitopt.cost=21
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  #smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #smoke lightgl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokelightgl.id
      @unitweapon.save

	  #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #shock
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save



############# Muttawi'ah  #########################     

      @unit = Unit.new
      @unit.name ="Muttawi'ah";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 11;
      @unit.ph = 12;
      @unit.wip = 15;
      @unit.arm = 0;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 3
      @unit.regular = false
      @unit.impetuous = 1
      @unit.cube = false
      @unit.skills = "V:Dogged, Religious Troop"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Rifle Light SG smoke grenades
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=5
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = chainrifle.id
      @unitweapon.save
	  
	  #emarat 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = emarat.id
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



############# Najjrun Engineer  #########################     

      @unit = Unit.new
      @unit.name ="Najjrun Engineer";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
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
      @unit.impetuous = 1
      @unit.cube = false
      @unit.skills = ""
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Rifle Light SG dcharges
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=17
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  #dcharge 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = dcharge.id
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


############# Rafiq Remote  #########################     

      @unit = Unit.new
      @unit.name ="Rafiq Remote";
      @unit.army_id = @haq.id;
      @unit.mov1 = 6;
      @unit.mov2 = 4;
      @unit.cc = 8;
      @unit.bs = 11;
      @unit.ph = 8;
      @unit.wip = 13;
      @unit.arm = 0;
      @unit.bts = -3;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "Forward Obsever, Repeater, Sensor"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Rifle Light SG dcharges
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=22
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save

	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  #epulse
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = epulse.id
      @unitweapon.save

############# Shihab Remote  #########################     

      @unit = Unit.new
      @unit.name ="Shihab Remote";
      @unit.army_id = @haq.id;
      @unit.mov1 = 6;
      @unit.mov2 = 4;
      @unit.cc = 8;
      @unit.bs = 11;
      @unit.ph = 8;
      @unit.wip = 13;
      @unit.arm = 0;
      @unit.bts = -3;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "Total Reaction, Repeater, 360 Visor"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### HMG AP mines
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=28
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #HMG 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save

	  #apmines
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apmines.id
      @unitweapon.save
	  
	  #epulse
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = epulse.id
      @unitweapon.save
	  
      ### HMG em light gl
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=35
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #HMG 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save

	  #light em gl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = emlightgl.id
      @unitweapon.save
	  
	  #epulse
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = epulse.id
      @unitweapon.save


############# Shanytaniyah Remote  #########################     

      @unit = Unit.new
      @unit.name ="Shanytaniyah Remote";
      @unit.army_id = @haq.id;
      @unit.mov1 = 6;
      @unit.mov2 = 4;
      @unit.cc = 8;
      @unit.bs = 11;
      @unit.ph = 8;
      @unit.wip = 13;
      @unit.arm = 0;
      @unit.bts = -3;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = ""
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Guided ML
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=34
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
       #guided ml
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = guidedml.id
      @unitweapon.save

	  
	  #epulse
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = epulse.id
      @unitweapon.save



############# Fanous Remote  #########################     

      @unit = Unit.new
      @unit.name ="Fanous Remote";
      @unit.army_id = @haq.id;
      @unit.mov1 = 6;
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
      @unit.cube = false
      @unit.skills = "CH:Mimetism, Multiterrain, Repeater"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Repeater
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
      @unitweapon.weapon_id = epulse.id
      @unitweapon.save


############# Tarik Mansuri  #########################     

      @unit = Unit.new
      @unit.name ="Tarik Mansuri";
      @unit.army_id = @haq.id;
      @unit.mov1 = 6;
      @unit.mov2 = 4;
      @unit.cc = 18;
      @unit.bs = 13;
      @unit.ph = 14;
      @unit.wip = 15;
      @unit.arm = 3;
      @unit.bts = 0;
      @unit.w = 2;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = "Martial Arts 2, Super-Jump, Religious Troop,Poison"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Tarik
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=56
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
       

	  
	  #aprifle
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
	  
	  #lightft
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
      @unitweapon.save

	  #grenades
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = grenade.id
      @unitweapon.save

	  #pistol
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #apccw
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
	  
	  
      ### Tarik
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = true;
      @unitopt.swc=-1
      @unitopt.cost=56
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
       

	  
	  #aprifle
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
	  
	  #lightft
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
      @unitweapon.save

	  #grenades
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = grenade.id
      @unitweapon.save

	  #pistol
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #apccw
	  @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save


############# Izzat Beg  #########################     

      @unit = Unit.new
      @unit.name ="Izzat Beg";
      @unit.army_id = @haq.id;
      @unit.mov1 = 8;
      @unit.mov2 = 6;
      @unit.cc = 18;
      @unit.bs = 11;
      @unit.ph = 14;
      @unit.wip = 15;
      @unit.arm = 2;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = false
      @unit.impetuous = 1
      @unit.cube = false
      @unit.skills = "Motorcycle, V:Dogged"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Rifle Light SG smoke grenades
	  @unitopt = UnitOption.new
      @unitopt.name ="mov 4-4"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=22
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  #smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #smoke lightgl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokelightgl.id
      @unitweapon.save

	  #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #apccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save

      ### LT
	  @unitopt = UnitOption.new
      @unitopt.name ="mov 4-4"
      @unitopt.lt = true;
      @unitopt.swc=-1
      @unitopt.cost=22
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  #smoke grenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #smoke lightgl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokelightgl.id
      @unitweapon.save

	  #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #apccw
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save
	  
	  
############# Lasiqs  #########################     

      @unit = Unit.new
      @unit.name ="Hassassin Lasiqs";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 2;
      @unit.cc = 14;
      @unit.bs = 12;
      @unit.ph = 11;
      @unit.wip = 13;
      @unit.arm = 2;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 2
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "CH:Mimetism, Climbing Plus, Religious Troop, X-Visor"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Viral Rifle Light SG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=24
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #viralrifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = viralrifle.id
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
	  
      ### Viral Sniper Rifle
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=27
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #viral sniper rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = viralsniperrifle.id
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

	############# Daylami  #########################     

      @unit = Unit.new
      @unit.name ="Daylami";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 10;
      @unit.ph = 10;
      @unit.wip = 13;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = false
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = ""
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Rifle Light SG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=9
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
	  
	  

      ### Rifle HMG
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=17
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
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
	  
	  
      ### Rifle Light GL
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=10
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #lightgl
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightgl.id
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
	  

      ### panzerfaust Rifle Light SG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=12
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      	  #panzerfaust 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = panzerfaust.id
      @unitweapon.save
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
	  
	  
      ### panzerfaust Rifle Light SG 
	  @unitopt = UnitOption.new
      @unitopt.name ="CH:Limited Camo, Inferior Infiltration"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=11
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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


      ### panzerfaust Rifle Light SG 
	  @unitopt = UnitOption.new
      @unitopt.name ="CH:Limited Camo, Inferior Infiltration"
      @unitopt.lt = false;
      @unitopt.swc=1.0
      @unitopt.cost=14
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      	  #panzerfaust 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = panzerfaust.id
      @unitweapon.save
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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


      ### panzerfaust Rifle Light SG 
	  @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = false;
      @unitopt.swc=3
      @unitopt.cost=9
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save

	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
	 
	  
	############# Bashi bazouk  #########################     

      @unit = Unit.new
      @unit.name ="Bashi Bazouk";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 14;
      @unit.bs = 11;
      @unit.ph = 10;
      @unit.wip = 13;
      @unit.arm = 2;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 2
      @unit.regular = false
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "AD:Parachutist/Zero-G, Holoprojector L2"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Rifle Light SG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=17
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
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
	  
	  
     ### Rifle Light SG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=16
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #boardingsg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
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
	  
     ### Rifle Light SG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=19
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
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
	  
	  
	  
     ### Rifle Light SG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=22
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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
	  
	  
	############# Azra'Il  #########################     

      @unit = Unit.new
      @unit.name ="Azra'Il";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 14;
      @unit.bs = 11;
      @unit.ph = 10;
      @unit.wip = 13;
      @unit.arm = 2;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 2
      @unit.regular = false
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "AD:Parachutist/Zero-G, Holoprojector L2"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Feuerbach assault pistol 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=41
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #feuerbach 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = feuerbach.id
      @unitweapon.save
	  
	  #assaultpistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = assaultpistol.id
      @unitweapon.save
	  
	  #knife 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = knife.id
      @unitweapon.save
	  
      ### AP Rifle light FT panzerfaust 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=36
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #APrifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = aprifle.id
      @unitweapon.save
	  
	  #lightft 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightft.id
      @unitweapon.save
	  
	  #panzerfaust 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = panzerfaust.id
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


      ### spitfire 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=36
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #spitfire 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = spitfire.id
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
	  
	############# Odalisques  #########################     

      @unit = Unit.new
      @unit.name ="Odalisques";
      @unit.army_id = @haq.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 14;
      @unit.bs = 12;
      @unit.ph = 10;
      @unit.wip = 14;
      @unit.arm = 2;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 2
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "i-Kohl 3, 6th Sense 2/360 Visor, V:No Wound Incapacitation"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### rifle light sg pistol 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=25
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = rifle.id
      @unitweapon.save
	  
	  #light sg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save

	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
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
	  
      ### boarding sg
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=24
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save
	  


	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
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
		  
      ### Spitfire
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=31
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #spitfire 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = spitfire.id
      @unitweapon.save
	  


	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
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
################################################################
################################# COMBINED #####################
################################################################			  
	
	
	############# Morat  #########################     

      @unit = Unit.new
      @unit.name ="Morat";
      @unit.army_id = @combined.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 14;
      @unit.bs = 11;
      @unit.ph = 12;
      @unit.wip = 13;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = ""
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### combirifle 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=16
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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

      ### HMG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=25
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #hmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
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
	  
      ### combirifle light GL
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=21
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save
	  
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightgl.id
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



      ### Missile launcher 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=38
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #ml 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = missilelauncher.id
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

      ### Multi Sniper Rifle 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=30
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multi sniper
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multisniperrifle.id
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
	  
	  
      ### Hacker 
	  @unitopt = UnitOption.new
      @unitopt.name ="Hacker(hacking Device)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=28
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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
      @unitopt.name ="Forward Observer"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=19
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


      ### Paramedic 
	  @unitopt = UnitOption.new
      @unitopt.name ="Paramedic(medkit)"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=20
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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

      ### Lieutenant
	  @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=2
      @unitopt.cost=16
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	############# Iskallers  #########################     

      @unit = Unit.new
      @unit.name ="Iskallers";
      @unit.army_id = @combined.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 14;
      @unit.bs = 11;
      @unit.ph = 12;
      @unit.wip = 13;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 2
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = ""
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### combirifle 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=31
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### hmg 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=40
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #hmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save
	  	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save
	  
      ### multisniper 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=45
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multisniperrifle.id
      @unitweapon.save
	  

	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save
	  
	  
      ### combirifle 
	  @unitopt = UnitOption.new
      @unitopt.name ="Hacker(Hacking Device)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=47
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save


      ### combirifle 
	  @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=2
      @unitopt.cost=31
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save
	  
	  
	############# WCD Vector-Operators  #########################     

      @unit = Unit.new
      @unit.name ="Vector-Operator";
      @unit.army_id = @combined.id;
      @unit.mov1 = 6;
      @unit.mov2 = 2;
      @unit.cc = 14;
      @unit.bs = 12;
      @unit.ph = 11;
      @unit.wip = 13;
      @unit.arm = 3;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "Exrah, CH:mimetism,Super_Jump MSV 2"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### combirifle 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=30
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### HMG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=35
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #hmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### multi sniperrifle 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=40
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multi sr 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multisniperrifle.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### combirifle 
	  @unitopt = UnitOption.new
      @unitopt.name ="Hacker(Hacking device)"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=30
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save


      ### Lieutenant 
	  @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=1.5
      @unitopt.cost=30
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save


	############# WCD Void-Operators  #########################     

      @unit = Unit.new
      @unit.name ="Void-Operator";
      @unit.army_id = @combined.id;
      @unit.mov1 = 6;
      @unit.mov2 = 2;
      @unit.cc = 14;
      @unit.bs = 12;
      @unit.ph = 11;
      @unit.wip = 13;
      @unit.arm = 3;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 2
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = "Exrah,Zero-G, X-Visor, 360 Visor"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### multirifle 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=29
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### HMG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=34
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #hmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### multi sniperrifle 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=39
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multi sr 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multisniperrifle.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### combirifle 
	  @unitopt = UnitOption.new
      @unitopt.name ="Hacker(Hacking device)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=41
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save


      ### Lieutenant 
	  @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = true;
      @unitopt.swc=2
      @unitopt.cost=29
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

	############# Suryats  #########################     

      @unit = Unit.new
      @unit.name ="Suryats";
      @unit.army_id = @combined.id;
      @unit.mov1 = 4;
      @unit.mov2 = 4;
      @unit.cc = 15;
      @unit.bs = 13;
      @unit.ph = 15;
      @unit.wip = 13;
      @unit.arm = 4;
      @unit.bts = -3;
      @unit.w = 2;
      @unit.avail = 2
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = "Morat, V:Courage"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### multirifle 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=57
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multirifle.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### HMG 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=58
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #hmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### boarding sg 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=49
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #boardingsg
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

      ### multirifle 
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = true;
      @unitopt.swc=1
      @unitopt.cost=57
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multirifle.id
      @unitweapon.save
	  
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save


	  #shock ccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save

	############# Charontids  #########################     

      @unit = Unit.new
      @unit.name ="Charontids";
      @unit.army_id = @combined.id;
      @unit.mov1 = 4;
      @unit.mov2 = 2;
      @unit.cc = 15;
      @unit.bs = 13;
      @unit.ph = 14;
      @unit.wip = 16;
      @unit.arm = 5;
      @unit.bts = -6;
      @unit.w = 2;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = "G:Mnemonica, V:No Wound Incapacitation"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### plasma  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=80
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #plasma rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = plasmarifle.id
      @unitweapon.save
	  
	
	  
	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #mfccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = mfccw.id
      @unitweapon.save

      ### plasma  Hacker
	  @unitopt = UnitOption.new
      @unitopt.name ="Hacker(Hacking Device Plus)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=82
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #plasma rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = plasmarifle.id
      @unitweapon.save
	  
	  
	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #mfccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = mfccw.id
      @unitweapon.save

      ### plasma  
	  @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant(MSV 3)"
      @unitopt.lt = true;
      @unitopt.swc=0
      @unitopt.cost=81
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #plasma rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = plasmarifle.id
      @unitweapon.save
	  
	  
	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #mfccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = mfccw.id
      @unitweapon.save
	  
      ### plasma  
	  @unitopt = UnitOption.new
      @unitopt.name ="(MSV 3)"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=80
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #plasma rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = plasmarifle.id
      @unitweapon.save
	  
	  
	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #mfccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = mfccw.id
      @unitweapon.save
	  
      ### plasma  
	  @unitopt = UnitOption.new
      @unitopt.name ="(MSV 3)"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=80
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #HMG
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = hmg.id
      @unitweapon.save
	  
	  
	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save
	  
	  #mfccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = mfccw.id
      @unitweapon.save
		  
	############# Raicho  #########################     

      @unit = Unit.new
      @unit.name ="Raicho";
      @unit.army_id = @combined.id;
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
      @unit.skills = "Morat, ECM"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### multihmg  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=97
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multihmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multihmg.id
      @unitweapon.save
	  
	  #heavygl 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = heavygl.id
      @unitweapon.save
	  
	  
      ### multihmg  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=89
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multihmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multihmg.id
      @unitweapon.save
	  
	  #heavyft 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = heavyft.id
      @unitweapon.save



	############# Caskuda  #########################     

      @unit = Unit.new
      @unit.name ="Caskuda";
      @unit.army_id = @combined.id;
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
      @unit.cube = false
      @unit.skills = "AD:Combat Jump, ECM, Explode"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### multihmg  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=3
      @unitopt.cost=111
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multihmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multihmg.id
      @unitweapon.save
	  
	  #heavyft 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = heavyft.id
      @unitweapon.save


	############# Avatar  #########################     

      @unit = Unit.new
      @unit.name ="Avatar";
      @unit.army_id = @combined.id;
      @unit.mov1 =6;
      @unit.mov2 = 4;
      @unit.cc = 18;
      @unit.bs = 15;
      @unit.ph = 17;
      @unit.wip = 17;
      @unit.arm = 10;
      @unit.bts = -9;
      @unit.w = 3;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = false
      @unit.skills = "G:mnemonica, ODD:optical Disruptor"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### multihmg  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=148
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multihmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multihmg.id
      @unitweapon.save
	  
	  #heavygl 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = heavygl.id
      @unitweapon.save



	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
      @unitweapon.save

	  #expccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = expccw.id
      @unitweapon.save


      ### multihmg  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=140
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multihmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multihmg.id
      @unitweapon.save
	  
	  #heavyft 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = heavyft.id
      @unitweapon.save



	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
      @unitweapon.save

	  #expccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = expccw.id
      @unitweapon.save

      ### multihmg  
	  @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant (Strategos L3)"
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=152
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multihmg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multihmg.id
      @unitweapon.save
	  
	  #heavygl 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = heavygl.id
      @unitweapon.save


	  #nanopulser 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = nanopulser.id
      @unitweapon.save

	  #expccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = expccw.id
      @unitweapon.save



	############# Shrouded  #########################     

      @unit = Unit.new
      @unit.name ="Shrouded";
      @unit.army_id = @combined.id;
      @unit.mov1 =4;
      @unit.mov2 = 4;
      @unit.cc = 13;
      @unit.bs = 12;
      @unit.ph = 12;
      @unit.wip = 13;
      @unit.arm = 0;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 2
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = "Shasvastii, AutoMedKit, CH:Camouflage, Infiltration"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=24
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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
	  
      ### boardingsg  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=24
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #boardingsg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
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

      ### multi sr  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=38
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multi sr 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multisniperrifle.id
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

      ### Hacker  
	  @unitopt = UnitOption.new
      @unitopt.name ="Hacker (Hacking Device)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=36
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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
	  
      ### Hacker  
	  @unitopt = UnitOption.new
      @unitopt.name ="(Forward Observer)"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=27
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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

      ### LT  
	  @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=24
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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

	############# Malignos  #########################     

      @unit = Unit.new
      @unit.name ="Malignos";
      @unit.army_id = @combined.id;
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
      @unit.skills = "Shasvastii, AutoMedKit, CH:Camouflage, Infiltration"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=37
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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

      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=43
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save

	  #lightsg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = lightsg.id
      @unitweapon.save
	  
	  #mfmines 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = mfmines.id
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
	  
	  
      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1.5
      @unitopt.cost=47
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #multi sr 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = multisniperrifle.id
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

      ### hacker  
	  @unitopt = UnitOption.new
      @unitopt.name ="Hacker (Hacking Device)"
      @unitopt.lt = false;
      @unitopt.swc=0.5
      @unitopt.cost=49
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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

      ### Forward Objserver  
	  @unitopt = UnitOption.new
      @unitopt.name ="(Forward Observer)"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=40
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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

      ### LT  
	  @unitopt = UnitOption.new
      @unitopt.name ="Lieutenant"
      @unitopt.lt = false;
      @unitopt.swc=2
      @unitopt.cost=37
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
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


	############# Speculo Killers  #########################     

      @unit = Unit.new
      @unit.name ="Speculo Killer";
      @unit.army_id = @combined.id;
      @unit.mov1 =4;
      @unit.mov2 = 4;
      @unit.cc = 17;
      @unit.bs = 12;
      @unit.ph = 12;
      @unit.wip = 14;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.skills = "Shasvastii, AutoMedKit, Martial Arts 3 , Impersonation Plus"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=39
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save

	  #smoke grenade 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

	  #mfccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = mfccw.id
      @unitweapon.save	
	  
	############# Daturazi  #########################     

      @unit = Unit.new
      @unit.name ="Daturazi";
      @unit.army_id = @combined.id;
      @unit.mov1 =4;
      @unit.mov2 = 4;
      @unit.cc = 18;
      @unit.bs = 10;
      @unit.ph = 14;
      @unit.wip = 12;
      @unit.arm = 1;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = 4
      @unit.regular = true
      @unit.impetuous = 1
      @unit.cube = true
      @unit.skills = "morat, AutoMedKit, Martial Arts 4 , CH:Mimetism, Coma"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save
   
	  
      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=23
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save

	  #smoke grenade 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

	  #shockccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save	
	  
      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=23
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save

	  #smoke grenade 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

	  #apccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = apccw.id
      @unitweapon.save	


      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=25
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save

	  #smoke grenade 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

	  #expccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = expccw.id
      @unitweapon.save	
			
      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=14
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #chainrifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save

	  #smoke grenade 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

	  #shockccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save	
	  
	  
      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=23
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #boardingsg 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = boardingsg.id
      @unitweapon.save

	  #smoke grenade 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

	  #shockccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save	
	  
      ### Combirifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=1
      @unitopt.cost=23
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save


	  #smoke grenade launcher
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokelightgl.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

	  #shockccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save	

      ### LT  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = true;
      @unitopt.swc=2
      @unitopt.cost=23
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save
      
	  #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = combirifle.id
      @unitweapon.save

	  #smoke grenade 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenade.id
      @unitweapon.save
	  
	  #pistol 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = pistol.id
      @unitweapon.save

	  #shockccw 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = shockccw.id
      @unitweapon.save	

      	############# Gaki  #########################     

        @unit = Unit.new
        @unit.name ="Gaki";
        @unit.army_id = @combined.id;
        @unit.mov1 =6;
        @unit.mov2 = 6;
        @unit.cc = 17;
        @unit.bs = 5;
        @unit.ph = 13;
        @unit.wip = 12;
        @unit.arm = 0;
        @unit.bts = 0;
        @unit.w = 1;
        @unit.avail = -1
        @unit.regular = false
        @unit.impetuous = 1
        @unit.cube = false
        @unit.skills = "Explode, V:Dogged, Poison"
        @unit.unit_type_id = 1;
        @isaddon = false;
        @unit.save


        ### Combirifle  
  	  @unitopt = UnitOption.new
        @unitopt.name =""
        @unitopt.lt = false;
        @unitopt.swc=0
        @unitopt.cost=6
        @unitopt.unit_id = @unit.id
        @unitopt.isaddon = false
        @unitopt.save

  	  #apccw 
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = apccw.id
        @unitweapon.save
        
     	############# Gaki  #########################     

      @unit = Unit.new
      @unit.name ="Gaki";
      @unit.army_id = @combined.id;
      @unit.mov1 =6;
      @unit.mov2 = 6;
      @unit.cc = 17;
      @unit.bs = 7;
      @unit.ph = 13;
      @unit.wip = 13;
      @unit.arm = 0;
      @unit.bts = 0;
      @unit.w = 1;
      @unit.avail = -1
      @unit.regular = false
      @unit.impetuous = 1
      @unit.cube = false
      @unit.skills = "V:Dogged, Poison"
      @unit.unit_type_id = 1;
      @isaddon = false;
      @unit.save


      ### chainrifle  
	  @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=5
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save

	  #chain rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = chainrifle.id
      @unitweapon.save

  	  #apmines rifle 
     @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = apmines.id
    @unitweapon.save  
        
    	 #chain rifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = ccw.id
      @unitweapon.save     
      
      
############# Med-tech Obsidon Medchanoid  #########################     

@unit = Unit.new
@unit.name ="MedTech Obsidon medchanoid";
@unit.army_id = @combined.id;
@unit.mov1 =6;
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
@unit.skills = "Engineer, Doctor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combirifle  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combi rifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save  
        
#dcharge rifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dcharge.id
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

############# M-Drone  #########################     

@unit = Unit.new
@unit.name ="M-Drone";
@unit.army_id = @combined.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "Forward Observer, Multiterrain, Repeater, Sensor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combirifle  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combi rifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#combi rifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save



############# Q-Drone  #########################     

@unit = Unit.new
@unit.name ="Q-Drone";
@unit.army_id = @combined.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "CH:Mimetism, Total Reaction, Repeater, 360 Visor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### HMG  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=29
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#HMG
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#apmines
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apmines.id
@unitweapon.save

#epulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save


### Plasma Rifle  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=30
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#Plasma rifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = plasmarifle.id
@unitweapon.save

#apmines
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apmines.id
@unitweapon.save

#epulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save


### HMG  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#HMG
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#mfmines
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = mfmines.id
@unitweapon.save

#epulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save


############# T-Drone  #########################     

@unit = Unit.new
@unit.name ="T-Drone";
@unit.army_id = @combined.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### Guided ML  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=34
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#guidedml
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = guidedml.id
@unitweapon.save

#electric pulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save


############# R-Drone  #########################     

@unit = Unit.new
@unit.name ="R-Drone";
@unit.army_id = @combined.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "CH:Mimetism, Multi Terrain, Repeater"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### pulse  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=8
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#electric pulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save

############# Slave-Drone  #########################     

@unit = Unit.new
@unit.name ="R-Drone";
@unit.army_id = @combined.id;
@unit.mov1 =6;
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
@unit.skills = "CH:Mimetism"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### pulse  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=3
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#electric pulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save

############# Rasyat  #########################     

@unit = Unit.new
@unit.name ="Rasyat";
@unit.army_id = @combined.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 18;
@unit.bs = 12;
@unit.ph = 13;
@unit.wip = 13;
@unit.arm = 2;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Morat, AD:Combat Jump"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi dcharge  
@unitopt = UnitOption.new
@unitopt.name ="(Martial Arts 3)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#dcharge 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dcharge.id
@unitweapon.save

#zerov 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = zerovsmokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#exp ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = expccw.id
@unitweapon.save

### boarding dcharge  
@unitopt = UnitOption.new
@unitopt.name ="(Martial Arts 3)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save


#dcharge 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dcharge.id
@unitweapon.save

#zerov 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = zerovsmokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#exp ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = expccw.id
@unitweapon.save

### combi dcharge  
@unitopt = UnitOption.new
@unitopt.name ="(Natural Born Warrior)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#emitter 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emitter.id
@unitweapon.save

#dcharge 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dcharge.id
@unitweapon.save

#zerov 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = zerovsmokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ap ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save


### spitfire dcharge  
@unitopt = UnitOption.new
@unitopt.name ="(Natural Born Warrior)"
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=40
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#spitfire 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire.id
@unitweapon.save



#zerov 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = zerovsmokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ap ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

############# Shasvastii Seed Soldier  #########################     

@unit = Unit.new
@unit.name ="Seed Soldier";
@unit.army_id = @combined.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 12;
@unit.bs = 11;
@unit.ph = 9;
@unit.wip = 13;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Shavastii, Seed-Embryo"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi lightsg  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### combi lightsg  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=19
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl.id
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

### combi lightsg  
@unitopt = UnitOption.new
@unitopt.name ="(Forward Observer)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=17
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### combi lightsg  
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (Medkit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


############# Shasvastii Seed Soldier  #########################     

@unit = Unit.new
@unit.name ="Cadmus Soldier";
@unit.army_id = @combined.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 12;
@unit.bs = 11;
@unit.ph = 12;
@unit.wip = 12;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Shavastii, Cadmus Seed, AP Mine(1), Electric pulse"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=28
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### combi lightgl 
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=28
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=28
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

################################################
############## Yu Jing #########################
################################################

############# Keisotsu butai  #########################     

@unit = Unit.new
@unit.name ="Keisotsu";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 14;
@unit.bs = 10;
@unit.ph = 10;
@unit.wip = 12;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = -1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "V:Courage"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=9
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=18
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### combi lightgl   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### multi sniper   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#sr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save 

### ml   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#ml
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = missilelauncher.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save  

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=21
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="(Forward Observer)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=12
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### Paramedic   
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=12
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=2
@unitopt.cost=9
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


############# Zhanshi  #########################     

@unit = Unit.new
@unit.name ="Zhanshi";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 14;
@unit.bs = 11;
@unit.ph = 10;
@unit.wip = 12;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = -1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=11
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=20
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### combi lightgl   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=16
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save
### multi sniper   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#sr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save 

### ml   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=27
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#ml
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = missilelauncher.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save  

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (Medkit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=15
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save



### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=11
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


################ Tiger SOldier ##############

@unit = Unit.new
@unit.name ="Tiger Soldier";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 15;
@unit.bs = 13;
@unit.ph = 12;
@unit.wip = 14;
@unit.arm = 2;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 3
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:Mimetism, AD:Combat Jump / Multiterrain"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=27
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### combi lightgl   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=26
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save
### multi sniper   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=40
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#sr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save 

  

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=39
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save
#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### Paramedic   
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=31
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=27
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


################ Invincibles ##############

@unit = Unit.new
@unit.name ="Invincible";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 16;
@unit.bs = 13;
@unit.ph = 14;
@unit.wip = 13;
@unit.arm = 4;
@unit.bts = -3;
@unit.w = 2;
@unit.avail = 4
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=42
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=43
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### bording sg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=34
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boarding sg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### multi   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=0
@unitopt.cost=42
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


################ Wu Ming ##############

@unit = Unit.new
@unit.name ="Wu Ming";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 16;
@unit.bs = 13;
@unit.ph = 14;
@unit.wip = 13;
@unit.arm = 4;
@unit.bts = -3;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=47
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=43
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### bording sg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=36
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boarding sg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save

#grenades 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = grenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

################ Daofei ##############

@unit = Unit.new
@unit.name ="Daofei";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 16;
@unit.bs = 13;
@unit.ph = 14;
@unit.wip = 13;
@unit.arm = 4;
@unit.bts = -3;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:Camouflage, Infiltration"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=60
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save


### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=61
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save


### bording sg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=52
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boarding sg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### multi   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=72
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=60
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

################ Hac Tao ##############

@unit = Unit.new
@unit.name ="Hac Tao";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 16;
@unit.bs = 14;
@unit.ph = 14;
@unit.wip = 14;
@unit.arm = 5;
@unit.bts = -6;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:TO Camouflage"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=70
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
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

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save


### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=67
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save


### ml sg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=74
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#ml 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = missilelauncher.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### multi   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=82
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
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

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### Lieutenant   
@unitopt = UnitOption.new
@unitopt.name ="Lieutanant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=60
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
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

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save


################ Hsien ##############

@unit = Unit.new
@unit.name ="Hsien";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 16;
@unit.bs = 14;
@unit.ph = 14;
@unit.wip = 14;
@unit.arm = 4;
@unit.bts = -6;
@unit.w = 2;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Martial Arts 2, MSV 2"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=60
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save


### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=61
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save


### bording sg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=52
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boarding sg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=67
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save
#em light gl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emlightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=-1
@unitopt.cost=60
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

################ Guijia ##############

@unit = Unit.new
@unit.name ="Guijia";
@unit.army_id = @yujing.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 19;
@unit.bs = 14;
@unit.ph = 17;
@unit.wip = 13;
@unit.arm = 8;
@unit.bts = -6;
@unit.w = 3;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "ECM"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi HMG
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=91
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi hmg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg.id
@unitweapon.save

#heavy ft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavyft.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### multi HMG GL
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=99
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi hmg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg.id
@unitweapon.save

#heavy gl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavygl.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### multi HMG
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=3
@unitopt.cost=91
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi hmg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg.id
@unitweapon.save

#heavy ft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavyft.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

################ Guilang ##############

@unit = Unit.new
@unit.name ="Guilang";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 14;
@unit.bs = 11;
@unit.ph = 12;
@unit.wip = 13;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:Camouflage, Infiltration, MSV 1"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


### boarding sg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#boarding
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
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
### multi sniper   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=39
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#sr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
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


### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=37
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


### Forward Observer   
@unitopt = UnitOption.new
@unitopt.name ="Forward Observer (Deployable Repeater)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=29
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=2
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

################ Ninjas ##############

@unit = Unit.new
@unit.name ="Ninja";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 17;
@unit.bs = 11;
@unit.ph = 12;
@unit.wip = 14;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Martial Arts 3, CH:TO Camouflage, Infiltration"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=36
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=36
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=38
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = expccw.id
@unitweapon.save

### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=50
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### combi   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=48
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

################ Shaolin ##############

@unit = Unit.new
@unit.name ="Shaolin";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 19;
@unit.bs = 9;
@unit.ph = 13;
@unit.wip = 14;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 4
@unit.regular = false
@unit.impetuous = 1
@unit.cube = false
@unit.skills = "Martial Arts 3, Religious Troop"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#smokegrenade 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#smokegrenade 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=16
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#smokegrenade 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#expccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = expccw.id
@unitweapon.save

### chain   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=5
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = chainrifle.id
@unitweapon.save

#smokegrenade 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### boarding sg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save

#smokegrenade 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#smokelightgl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokelightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save
################ Yisheng ##############

@unit = Unit.new
@unit.name ="Zhanshi Yisheng";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 14;
@unit.bs = 11;
@unit.ph = 10;
@unit.wip = 13;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Doctor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=15
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


################ Mech_engineer ##############

@unit = Unit.new
@unit.name ="Mech-Engineer";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 14;
@unit.bs = 11;
@unit.ph = 10;
@unit.wip = 13;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Engineer"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=15
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dcharge.id
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

################ Guardian ##############

@unit = Unit.new
@unit.name ="Yaokong (Guardian)";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "Observer, Repeater, Sensor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=21
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save

################ Escort ##############

@unit = Unit.new
@unit.name ="Yaokong (Escort)";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "Total Reaction, Repeater, 360 Visor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=28
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#apmines 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apmines.id
@unitweapon.save

#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#emlightgl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emlightgl.id
@unitweapon.save

#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save


################ Yaokong ##############

@unit = Unit.new
@unit.name ="Yaokong SON-BAE";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### guided ml   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=34
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#guided ml 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = guidedml.id
@unitweapon.save



#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save

################ Ko Dali ##############

@unit = Unit.new
@unit.name ="Ko Dali";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 15;
@unit.bs = 14;
@unit.ph = 13;
@unit.wip = 14;
@unit.arm = 2;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:Mimetism, MSV 1, AD:Tactical Jump / Multiterrian"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi rifle
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save



#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### combi rifle
@unitopt = UnitOption.new
@unitopt.name ="Lieutanant"
@unitopt.lt = true;
@unitopt.swc=-1
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save



#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emccw.id
@unitweapon.save

################ Sun Tze ##############

@unit = Unit.new
@unit.name ="Sun Tze";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 15;
@unit.bs = 13;
@unit.ph = 14;
@unit.wip = 17;
@unit.arm = 5;
@unit.bts = -6;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Total Immunity, V:No Wound Imcapacitation, Strategos 2"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi rifle
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=73
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#nano pulser 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = nanopulser.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### multi rifle
@unitopt = UnitOption.new
@unitopt.name ="Lieutanant"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=73
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#nano pulser 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = nanopulser.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save


############# Celestial Guard  #########################     

@unit = Unit.new
@unit.name ="Celestial Guard";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 14;
@unit.bs = 11;
@unit.ph = 10;
@unit.wip = 14;
@unit.arm = 1;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=13
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### boardingsg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=13
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### combi lightgl   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=18
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save
### spitfire   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=20
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#spitfire 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save 

### ml   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=27
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#ml
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = missilelauncher.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save  

### Kuang Shi Control   
@unitopt = UnitOption.new
@unitopt.name ="Kuang Shi Control Device"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=13
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokelightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save




### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=0
@unitopt.cost=13
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

############# Domaru  #########################     

@unit = Unit.new
@unit.name ="Domaru";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 18;
@unit.bs = 12;
@unit.ph = 14;
@unit.wip = 13;
@unit.arm = 3;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 1
@unit.regular = false#berzerk
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Berzerk, V:Courage"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### chain   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=33
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#chain 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = chainrifle.id
@unitweapon.save

#emgrenade 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emgrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#emccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emccw.id
@unitweapon.save

### chain   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#chain 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = chainrifle.id
@unitweapon.save

#emgrenade 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emgrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#emccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = expccw.id
@unitweapon.save

### chain   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=42
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#chain 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save

#emgrenade 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emgrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#emccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### chain   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = true;
@unitopt.swc=0
@unitopt.cost=33
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#chain 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = chainrifle.id
@unitweapon.save

#emgrenade 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emgrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#emccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emccw.id
@unitweapon.save

############# Shang Ji  #########################     

@unit = Unit.new
@unit.name ="Shang Ji";
@unit.army_id = @yujing.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 16;
@unit.bs = 13;
@unit.ph = 14;
@unit.wip = 13;
@unit.arm = 4;
@unit.bts = -6;
@unit.w = 2;
@unit.avail = 3
@unit.regular = true#berzerk
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi light ft   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=42
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### multi
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=49
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save



#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### spitfire  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=47
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### Hacker
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=54
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### Hacker
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=46
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### LT
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=0
@unitopt.cost=42
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

##########################################
################ PAN OCEANA #############
#########################################


############# FUSILIERS  #########################     

@unit = Unit.new
@unit.name ="Fusiliers";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 12;
@unit.ph = 10;
@unit.wip = 12;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = -1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=10
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=19
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### combi lightgl   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=15
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save
### multi sniper   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=24
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#sr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save 

### ml   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=26
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#ml
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = missilelauncher.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save  

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=22
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### Forward OBserver   
@unitopt = UnitOption.new
@unitopt.name ="(Forward Observer Deployable Repeater)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### Paramedic   
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=0
@unitopt.cost=10
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


############# Kamau  #########################     

@unit = Unit.new
@unit.name ="Kamau";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 13;
@unit.ph = 10;
@unit.wip = 13;
@unit.arm = 1;
@unit.bts = -6;
@unit.w = 1;
@unit.avail = 3
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Aquatic Terrain"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=16
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
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


### combi lightgl   
@unitopt = UnitOption.new
@unitopt.name ="(X Visor)"
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl.id
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
### multi sniper   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=32
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#sr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
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



### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=28
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


### Paramedic   
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=20
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=16
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

############# Bagh-Mari  #########################     

@unit = Unit.new
@unit.name ="Bagh-Mari";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 14;
@unit.bs = 12;
@unit.ph = 11;
@unit.wip = 13;
@unit.arm = 2;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:Mimetism, Multiterrain(Aq,Des,or Jungle), MSV 1"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=22
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=27
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
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





### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=34
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


### Paramedic   
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=26
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=22
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

############# Akalis Commando  #########################     
ccw
@unit = Unit.new
@unit.name ="Akal Commando";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 14;
@unit.bs = 13;
@unit.ph = 11;
@unit.wip = 13;
@unit.arm = 2;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 3
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "AD:Combat Jump, Religious Troop"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=32
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### Boarding SG   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### multisniper    
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=37
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multisr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save




### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save



#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


############# Nisse  #########################     

@unit = Unit.new
@unit.name ="Nisse";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 14;
@unit.bs = 13;
@unit.ph = 12;
@unit.wip = 13;
@unit.arm = 3;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:Mimetism, Multiterrain(Aq,Des,or Jungle), MSV 2"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=31
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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




### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=36
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
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

### multi sniper   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=41
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multisniper 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
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

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=43
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


### Paramedic   
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=31
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

############# Orc  #########################     

@unit = Unit.new
@unit.name ="Orc";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 15;
@unit.bs = 14;
@unit.ph = 14;
@unit.wip = 12;
@unit.arm = 4;
@unit.bts = -3;
@unit.w = 2;
@unit.avail = 3
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=40
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
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




### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=41
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
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

### boardingsg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=32
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
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

### multi   LT
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=40
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
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


############# Knight Hospitaller  #########################     

@unit = Unit.new
@unit.name ="Knight Hospitaller";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 16;
@unit.bs = 14;
@unit.ph = 14;
@unit.wip = 13;
@unit.arm = 4;
@unit.bts = -6;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 2
@unit.cube = true
@unit.skills = "Martial Arts 2, Sixth Sense, Religious Troop"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=48
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save



#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=50
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save



#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = expccw.id
@unitweapon.save


### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=49
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### Doctor   
@unitopt = UnitOption.new
@unitopt.name ="Doctor"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=52
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=48
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

############# Aquila  #########################     

@unit = Unit.new
@unit.name ="Aquila";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 15;
@unit.bs = 15;
@unit.ph = 14;
@unit.wip = 13;
@unit.arm = 4;
@unit.bts = -6;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "MSV 3"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=59
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save



#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save




### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=60
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### multi lightemgrenade   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=66
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#lightemgl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emlightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=59
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save



############# Swiss Guard  #########################     

@unit = Unit.new
@unit.name ="Swiss Guard";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 15;
@unit.bs = 15;
@unit.ph = 14;
@unit.wip = 13;
@unit.arm = 5;
@unit.bts = -6;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:TO Camouflage"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=70
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
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

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save




### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=67
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### ML   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=74
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#ml 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = missilelauncher.id
@unitweapon.save


#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### multi  Hacker 
@unitopt = UnitOption.new
@unitopt.name ="Hacker(Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=82
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
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

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=70
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
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

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save


############# Squalo  #########################     

@unit = Unit.new
@unit.name ="Squalo (armoured cav)";
@unit.army_id = @pano.id;
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
@unit.cube = false
@unit.skills = "ECM"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi HMG   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=101
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi hmg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg.id
@unitweapon.save

#Heavygl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavygl.id
@unitweapon.save

### multi HMG   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=93
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi hmg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg.id
@unitweapon.save

#Heavyft
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavyft.id
@unitweapon.save

### multi HMG   LT
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=101
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi hmg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg.id
@unitweapon.save

#Heavygl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavygl.id
@unitweapon.save


############# Dragao  #########################     

@unit = Unit.new
@unit.name ="Dragao";
@unit.army_id = @pano.id;
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
@unit.cube = false
@unit.skills = "ECM"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### hrmc HMG   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=94
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmc
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmc.id
@unitweapon.save

#Heavyft
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavyft.id
@unitweapon.save


############# Jotums  #########################     

@unit = Unit.new
@unit.name ="Jotum";
@unit.army_id = @pano.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 18;
@unit.bs = 15;
@unit.ph = 17;
@unit.wip = 13;
@unit.arm = 10;
@unit.bts = -9;
@unit.w = 3;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "ECM, Mountain Terrain"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi HMG   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=110
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi hmg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg.id
@unitweapon.save

#Heavygl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavygl.id
@unitweapon.save



### multi HMG   LT
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=110
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi hmg
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg.id
@unitweapon.save

#Heavygl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavygl.id
@unitweapon.save


############# Croc men  #########################     

@unit = Unit.new
@unit.name ="Croc Man";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 12;
@unit.ph = 12;
@unit.wip = 13;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:TO Camouflage, Infiltration, X-Visor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
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
@unitweapon.weapon_id = combirifle.id
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

### boardingsg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=29
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
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



#multi sniper rifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
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




### Hacker   
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
@unitweapon.weapon_id = combirifle.id
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


### FO   
@unitopt = UnitOption.new
@unitopt.name ="Forward Observer (Deployable Repeater)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=37
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=2
@unitopt.cost=33
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

############# Trauma-Doc  #########################     

@unit = Unit.new
@unit.name ="Trauma-Doc";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 12;
@unit.ph = 10;
@unit.wip = 12;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Doctor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

############# Machinist  #########################     

@unit = Unit.new
@unit.name ="Machinist";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 12;
@unit.ph = 10;
@unit.wip = 12;
@unit.arm = 1;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Engineer"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=15
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dcharge.id
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

############# Pathfinder Dronbot  #########################     

@unit = Unit.new
@unit.name ="Pathfinder Dronbot";
@unit.army_id = @pano.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Forward Observer, Repeater, Sensor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=21
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save



#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save


############# Sierra Dronbot  #########################     

@unit = Unit.new
@unit.name ="Sierra Dronbot";
@unit.army_id = @pano.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Total Reaction, Repeater, 360 Visor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### hmg apmines   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=28
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#apmines 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apmines.id
@unitweapon.save

#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save

### hmg em lightgl   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=34
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#emlightgl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emlightgl.id
@unitweapon.save

#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save


### hmg mfmines   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=34
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#mfmines 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = mfmines.id
@unitweapon.save

#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save

############# Clipper Dronbot  #########################     

@unit = Unit.new
@unit.name ="Clipper Dronbot";
@unit.army_id = @pano.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### guided ml 
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=34
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#guided ml 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = guidedml.id
@unitweapon.save



#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save


############# Fugazi Dronbot  #########################     

@unit = Unit.new
@unit.name ="Fugazi Dronbot";
@unit.army_id = @pano.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:Mimetism, Mutiterrian, Repeater"
@unit.unit_type_id = 1;
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
@unitweapon.weapon_id = epulse.id
@unitweapon.save

############# Joan of Arc  #########################     

@unit = Unit.new
@unit.name ="Joan of Arc";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 18;
@unit.bs = 15;
@unit.ph = 15;
@unit.wip = 15;
@unit.arm = 5;
@unit.bts = -6;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 2
@unit.cube = true
@unit.skills = "Martial Arts 3, Inspiring Leadership, V:No Wound Incap, Religious Troop"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multirifle
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=61
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save






#multirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#pulser 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = nanopulser.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### multirifle
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=0
@unitopt.cost=61
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save






#multirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#pulser 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = nanopulser.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save


############# Auxilia Dronbot  #########################     

@unit = Unit.new
@unit.name ="Auxilia";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 11;
@unit.ph = 10;
@unit.wip = 12;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combirifle
@unitopt = UnitOption.new
@unitopt.name ="Auxbot 1"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### combirifle
@unitopt = UnitOption.new
@unitopt.name ="Auxbot 2"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=20
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### combirifle
@unitopt = UnitOption.new
@unitopt.name ="Auxbot 1"
@unitopt.lt = true;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


############# Auxbot  #########################     

@unit = Unit.new
@unit.name ="Auxbot";
@unit.army_id = @pano.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 10;
@unit.ph = 8;
@unit.wip = 11;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### aux1
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=8
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#heavy ft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavyft.id
@unitweapon.save


#epulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save


### aux1
@unitopt = UnitOption.new
@unitopt.name ="Forward Observer"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=20
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#heavy ft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavyft.id
@unitweapon.save


#epulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save

############# Knights of santiago  #########################     

@unit = Unit.new
@unit.name ="Knights of Santiago";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 18;
@unit.bs = 14;
@unit.ph = 13;
@unit.wip = 13;
@unit.arm = 4;
@unit.bts = -3;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 2
@unit.cube = true
@unit.skills = "Religious Troop, 360 Visor, Zero-G"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### Spitfire
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=51
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire.id
@unitweapon.save

#emgreanade
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emgrenade.id
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### boardingsg
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=44
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save

#emgreanade
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emgrenade.id
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### Spitfire LT
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=51
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire.id
@unitweapon.save

#emgreanade
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emgrenade.id
@unitweapon.save

#pistol
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

############# palbots  #########################     

@unit = Unit.new
@unit.name ="Palbot";
@unit.army_id = @pano.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 8;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 3
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "CH:mimetism"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### palbot
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=3
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#epulse
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save

############# Acontecimento Regulars  #########################     

@unit = Unit.new
@unit.name ="Regular";
@unit.army_id = @pano.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 12;
@unit.ph = 10;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Jungle Terrain"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save

### Combi
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=10
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### Combi light gl
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=15
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightgl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl.id
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

### Spitfire
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=17
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#spitfire
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire.id
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

### Combi FO
@unitopt = UnitOption.new
@unitopt.name ="Forward Observer"
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=13
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### Combi sapper
@unitopt = UnitOption.new
@unitopt.name ="Sapper"
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=27
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
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

### Combi hacker
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking device Deployable repeater)"
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### minelayer
@unitopt = UnitOption.new
@unitopt.name ="MineLayer (Sensor)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### Combi paramedic
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### Combi paramedic
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=10
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

#############################################
###################nomads####################
#############################################


############# Alguacil  #########################     
knife
@unit = Unit.new
@unit.name ="Alguacil";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 11;
@unit.ph = 10;
@unit.wip = 13;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = -1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=10
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=19
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
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


### combi lightgl   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=24
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightgl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightgl.id
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
### multi sniper   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=24
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#sr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
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

### ml   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0.1
@unitopt.cost=26
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#ml
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = missilelauncher.id
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

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### FO
@unitopt = UnitOption.new
@unitopt.name ="(Forward Observer Deployable Repeater)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### Paramedic   
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### LT
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=10
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

    
############# Securitate  #########################     

@unit = Unit.new
@unit.name ="Securitate";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 12;
@unit.ph = 10;
@unit.wip = 14;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 4
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Repeater, 6th Sense"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=28
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
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


### multi sniper   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=33
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#sr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
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


### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=32
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


### Paramedic   
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=27
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### LT
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=0
@unitopt.cost=23
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


############# hellcats  #########################     

@unit = Unit.new
@unit.name ="Hellcat";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 14;
@unit.bs = 12;
@unit.ph = 12;
@unit.wip = 13;
@unit.arm = 2;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 4
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "V:courage, AD Combat Jump/Zero-G"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=24
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=29
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
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

### baordingsg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=20
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
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

### combi ahdl  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightsg.id
@unitweapon.save

#adhl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = adhl.id
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


### multi sniper   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=34
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#sr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
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


### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=36
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


### Paramedic   
@unitopt = UnitOption.new
@unitopt.name ="Paramedic (MedKit)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=28
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### LT
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=24
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


############# Intruders  #########################     

@unit = Unit.new
@unit.name ="Intruder";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 14;
@unit.bs = 13;
@unit.ph = 12;
@unit.wip = 13;
@unit.arm = 3;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "CH: Camouflage, MSV 2, Multiterrain"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=24
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#grenade
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = grenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=44
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#grenade
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = grenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### combi ahdl  
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=25
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#adhl
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = adhl.id
@unitweapon.save

#grenade
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = grenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save



### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=48
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#grenade
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = grenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save


### LT
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=1
@unitopt.cost=36
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save

#grenade
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = grenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

### x visor
@unitopt = UnitOption.new
@unitopt.name ="X Visor"
@unitopt.lt = true;
@unitopt.swc=1.5
@unitopt.cost=52
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
@unitweapon.save



#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#ccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = ccw.id
@unitweapon.save

############# Reverend Moiras  #########################     

@unit = Unit.new
@unit.name ="Reverend Moira";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 14;
@unit.bs = 12;
@unit.ph = 12;
@unit.wip = 14;
@unit.arm = 3;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "ODD, Religious Troop, Multiterrain"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=38
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### apccw multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=38
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#apccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### HMG 
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=39
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### multisniper 
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=44
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
@unitweapon.save

#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### multi emgl 
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=45
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emlightgl.id
@unitweapon.save

#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### multi hacker 
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=50
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### LT 
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=38
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save



############# Mobile Brigada  #########################     

@unit = Unit.new
@unit.name ="Mobile Brigada";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 2;
@unit.cc = 15;
@unit.bs = 13;
@unit.ph = 14;
@unit.wip = 13;
@unit.arm = 4;
@unit.bts = -3;
@unit.w = 2;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "V: Courage"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=43
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save


#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife.id
@unitweapon.save

### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=43
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save


#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife.id
@unitweapon.save


### boardingsg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=34
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save


#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife.id
@unitweapon.save

### multi  LT 
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=0
@unitopt.cost=43
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save


#Pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#knife 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife.id
@unitweapon.save

############# Lizard Squadron  #########################     

@unit = Unit.new
@unit.name ="Lizard Squadron";
@unit.army_id = @nomads.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 17;
@unit.bs = 14;
@unit.ph = 17;
@unit.wip = 13;
@unit.arm = 8;
@unit.bts = -6;
@unit.w = 2;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "ECM"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=96
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg.id
@unitweapon.save

#heavey gl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavygl.id
@unitweapon.save

### multi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=88
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#multi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multihmg.id
@unitweapon.save

#heavey ft
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavyft.id
@unitweapon.save

############# Salamandra Squadron  #########################     

@unit = Unit.new
@unit.name ="Salamandra Squadron";
@unit.army_id = @nomads.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 17;
@unit.bs = 14;
@unit.ph = 17;
@unit.wip = 13;
@unit.arm = 8;
@unit.bts = -9;
@unit.w = 3;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "ECM"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### hmc   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=2
@unitopt.cost=90
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmc 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmc.id
@unitweapon.save

#heavey ft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = heavyft.id
@unitweapon.save

############# Zeros  #########################     

@unit = Unit.new
@unit.name ="Zeros";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 11;
@unit.ph = 12;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:Camouflage, Infiltration"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=18
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### msr   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=32
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#msr 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = multisniperrifle.id
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

### boardingsg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=18
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
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

### Hacker   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=30
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### Forward Observer   
@unitopt = UnitOption.new
@unitopt.name ="Forward Observer"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=21
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### Dep repeater    
@unitopt = UnitOption.new
@unitopt.name ="Deployable Repeater"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=24
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### LT    
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=24
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


############# Der morlock gruppe  #########################     

@unit = Unit.new
@unit.name ="Morlock";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 18;
@unit.bs = 11;
@unit.ph = 13;
@unit.wip = 14;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = -1
@unit.regular = false
@unit.impetuous = 1
@unit.cube = false
@unit.skills = "Martial Arts 2, MadChemistry"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=16
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#smoke grenades 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=16
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#smoke grenades 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw.id
@unitweapon.save

### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=7
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = chainrifle.id
@unitweapon.save

#smoke grenades 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### boardingsg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=16
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
@unitweapon.save

#smoke grenades 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### combi smoke light gl   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=16
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#boardingsg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#smoke light gl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokelightgl.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

### LT   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant"
@unitopt.lt = true;
@unitopt.swc=2
@unitopt.cost=16
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#smoke grenades 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = smokegrenade.id
@unitweapon.save

#pistol 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol.id
@unitweapon.save

#shockccw 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = shockccw.id
@unitweapon.save

############# Daktaris  #########################     

@unit = Unit.new
@unit.name ="Daktaris";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 11;
@unit.ph = 10;
@unit.wip = 13;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Doctor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=14
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


############# Clockmakers  #########################     

@unit = Unit.new
@unit.name ="Clockmaker";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 11;
@unit.ph = 10;
@unit.wip = 15;
@unit.arm = 1;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Engineer"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=18
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#dcharge 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dcharge.id
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

############# Interventor  #########################     

@unit = Unit.new
@unit.name ="Interventor";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 11;
@unit.ph = 10;
@unit.wip = 15;
@unit.arm = 1;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device Plus)"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=26
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### combi   
@unitopt = UnitOption.new
@unitopt.name ="Lieutenant (Hacking Device Plus)"
@unitopt.lt = true;
@unitopt.swc=0.5
@unitopt.cost=26
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

############# Stempler Zond  #########################     

@unit = Unit.new
@unit.name ="Stempler Zond";
@unit.army_id = @nomads.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Forward Observer, Repeater, Sensor, Climbing Plus"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=22
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#combi 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#electric pulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =epulse.id
@unitweapon.save

############# Reaktion Zond  #########################     

@unit = Unit.new
@unit.name ="Reaktion Zond";
@unit.army_id = @nomads.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Total Reation, Repeater, Climbing Plus, 360 Visor"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### hmg   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=28
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#apmines 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apmines.id
@unitweapon.save

#electric pulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =epulse.id
@unitweapon.save

### hmg    em lightgl
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=35
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#hmg 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = hmg.id
@unitweapon.save

#emlightgl 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emlightgl.id
@unitweapon.save

#apmines 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apmines.id
@unitweapon.save

#electric pulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =epulse.id
@unitweapon.save


############# Vertigo Zond  #########################     

@unit = Unit.new
@unit.name ="Vertigo Zond";
@unit.army_id = @nomads.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = ""
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### guided ml   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=34
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save



#guidedml 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = guidedml.id
@unitweapon.save


#electric pulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =epulse.id
@unitweapon.save



############# Meteor Zond  #########################     

@unit = Unit.new
@unit.name ="Meteor Zond";
@unit.army_id = @nomads.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "AD:Combat Jump, Sensor, Forward Observer, Repeater"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=29
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save


#combi
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save


#electric pulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =epulse.id
@unitweapon.save

############# Transductor Zond  #########################     

@unit = Unit.new
@unit.name ="Transductor Zond";
@unit.army_id = @nomads.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "CH:Mimetism, Multiterrain, Repeater"
@unit.unit_type_id = 1;
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

#electric pulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id =epulse.id
@unitweapon.save


############# Zoe #########################     

@unit = Unit.new
@unit.name ="Zoe";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 11;
@unit.ph = 10;
@unit.wip = 15;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Engineer"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combirifle   
@unitopt = UnitOption.new
@unitopt.name ="Hacker (Hacking Device)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=53
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#dcharges 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dcharge.id
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


############# PIWell #########################     

@unit = Unit.new
@unit.name ="Pi-Well";
@unit.army_id = @nomads.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 11;
@unit.ph = 8;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = -3;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "ODD, Forward Observer, Repeater, Sensor"
@unit.unit_type_id = 1;
@isaddon = true;
@unit.save


### combirifle   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=0
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save


############# Tomcats #########################     

@unit = Unit.new
@unit.name ="Tomcat";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 12;
@unit.ph = 11;
@unit.wip = 13;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "AD:Airbourne Infiltration / Zero-G, Climbing Plus"
@unit.unit_type_id = 1;
@isaddon = true;
@unit.save


### combirifle   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=19
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save
#dep 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dep.id
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

### combirifle   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=19
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#emitter 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = emitter.id
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

### combirifle   
@unitopt = UnitOption.new
@unitopt.name ="Deployable Repeater"
@unitopt.lt = false;
@unitopt.swc=0.5
@unitopt.cost=19
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
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

### eng   
@unitopt = UnitOption.new
@unitopt.name ="Engineer"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=22
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save
#dep 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dep.id
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

### Doc   
@unitopt = UnitOption.new
@unitopt.name ="Doctor"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=19
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
@unitweapon.save

#lightft 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = lightft.id
@unitweapon.save
#dep 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = dep.id
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

############# Moran #########################     

@unit = Unit.new
@unit.name ="Moran";
@unit.army_id = @nomads.id;
@unit.mov1 =4;
@unit.mov2 = 4;
@unit.cc = 14;
@unit.bs = 12;
@unit.ph = 11;
@unit.wip = 13;
@unit.arm = 0;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "CH:Mimetism, Infiltration, Repeater, V:Courage"
@unit.unit_type_id = 1;
@isaddon = true;
@unit.save


### combirifle   
@unitopt = UnitOption.new
@unitopt.name ="KrazyKoalas (2)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=21
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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

### boarding sg   
@unitopt = UnitOption.new
@unitopt.name ="KrazyKoalas (2)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=21
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = boardingsg.id
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

### combirifle   
@unitopt = UnitOption.new
@unitopt.name ="Forward Observer KrazyKoalas (2)"
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost=24
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#combirifle 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle.id
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


############# Tsyklon Sputnik #########################     

@unit = Unit.new
@unit.name ="Tsyklon";
@unit.army_id = @nomads.id;
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 8;
@unit.bs = 12;
@unit.ph = 18;
@unit.wip = 13;
@unit.arm = 3;
@unit.bts = -6;
@unit.w = 1;
@unit.avail = 2
@unit.regular = true
@unit.impetuous = 0
@unit.cube = false
@unit.skills = "360 Visor, Climbing Plus, Repeater"
@unit.unit_type_id = 1;
@isaddon = true;
@unit.save


### spitfire   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1
@unitopt.cost=37
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#spitfire 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = spitfire.id
@unitweapon.save

#marker 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = marker.id
@unitweapon.save

#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save

### spitfire   
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=1.5
@unitopt.cost=38
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save

#feuerbach 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = feuerbach.id
@unitweapon.save



#epulse 
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = epulse.id
@unitweapon.save



      #mercs
  end

  def self.down
  end
end
