class AddMercUnits < ActiveRecord::Migration
  def self.up
    combirifle = 17
    spitfire = 54
    chainrifle = 16
    rifle = 44
    smokegrenades = 46
    grenades = 24
    boardingsg = 15
    nanopulser = 39
    pistol = 42
    knife = 6
    shockccw = 8
    apccw = 1
    expccw = 5
    epulse = 3
    heavysg = 29
    @unit = Unit.new
    @unit.name ="Yuan Yuan";
    @unit.army_id = 7; 
    @unit.mov1 =4;
    @unit.mov2 = 4;
    @unit.cc = 17;
    @unit.bs = 9;
    @unit.ph = 13;
    @unit.wip = 13;
    @unit.arm = 0;
    @unit.bts = 0;
    @unit.w = 1;
    @unit.avail = 4
    @unit.regular = false
    @unit.impetuous = 1
    @unit.cube = false
    @unit.skills = "Booty, AD: Combat Jump, May not Join Yu Jing or Combined"
    @unit.unit_type_id = 7;
    @isaddon = false;
    @unit.save


    ### chain rifle
    @unitopt = UnitOption.new
    @unitopt.name =""
    @unitopt.lt = false;
    @unitopt.swc=0
    @unitopt.cost=11
    @unitopt.unit_id = @unit.id
    @unitopt.isaddon = false
    @unitopt.save





    #chainrifle
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = chainrifle
    @unitweapon.save
    #smokegrenades
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = smokegrenades
    @unitweapon.save

    #pistol 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = pistol
    @unitweapon.save

    #ap ccw
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = shockccw 
    @unitweapon.save
    
     ### chain rifle
      @unitopt = UnitOption.new
      @unitopt.name =""
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=13
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save





      #chainrifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = chainrifle
      @unitweapon.save
      #smokegrenades
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = smokegrenades
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

       ### boarding SG
        @unitopt = UnitOption.new
        @unitopt.name =""
        @unitopt.lt = false;
        @unitopt.swc=0
        @unitopt.cost=22
        @unitopt.unit_id = @unit.id
        @unitopt.isaddon = false
        @unitopt.save





        #boardingsg
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = boardingsg
        @unitweapon.save
        #smokegrenades
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = smokegrenades
        @unitweapon.save

        #pistol 
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = pistol
        @unitweapon.save

        #ap ccw
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = shockccw 
        @unitweapon.save

         ###  rifle
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
          @unitweapon.weapon_id = rifle
          @unitweapon.save
          #smokegrenades
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = smokegrenades
          @unitweapon.save

          #pistol 
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = pistol
          @unitweapon.save

          #ap ccw
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = shockccw 
          @unitweapon.save

           ### chain rifle LT
            @unitopt = UnitOption.new
            @unitopt.name =""
            @unitopt.lt = true;
            @unitopt.swc=3
            @unitopt.cost=111
            @unitopt.unit_id = @unit.id
            @unitopt.isaddon = false
            @unitopt.save





            #chainrifle
            @unitweapon = UnitOptionWeapon.new
            @unitweapon.unit_option_id = @unitopt.id
            @unitweapon.weapon_id = chainrifle
            @unitweapon.save
            #smokegrenades
            @unitweapon = UnitOptionWeapon.new
            @unitweapon.unit_option_id = @unitopt.id
            @unitweapon.weapon_id = smokegrenades
            @unitweapon.save

            #pistol 
            @unitweapon = UnitOptionWeapon.new
            @unitweapon.unit_option_id = @unitopt.id
            @unitweapon.weapon_id = pistol
            @unitweapon.save

            #ap ccw
            @unitweapon = UnitOptionWeapon.new
            @unitweapon.unit_option_id = @unitopt.id
            @unitweapon.weapon_id = shockccw 
            @unitweapon.save


            ############# Dog Warrior McMURROUGH, #########################     

             @unit = Unit.new
             @unit.name ="McMurrough Dog Warrior";
             @unit.army_id = 7;
             @unit.mov1 = 6;
             @unit.mov2 = 4;
             @unit.cc = 19;
             @unit.bs = 11;
             @unit.ph = 16;
             @unit.wip = 14;
             @unit.arm = 3;
             @unit.bts = 0;
             @unit.w = 3;
             @unit.avail = 1
             @unit.regular = false
             @unit.impetuous = 1
             @unit.cube = false
             @unit.skills = "Martial Arts 3, CC 2 Weapons, Total Immunity, Super Jump"
             @unit.unit_type_id = 7;
             @isaddon = false;
             @unit.save


             ###  warrior
             @unitopt = UnitOption.new
             @unitopt.name =""
             @unitopt.lt = false;
             @unitopt.swc=0
             @unitopt.cost=36
             @unitopt.unit_id = @unit.id
             @unitopt.isaddon = false
             @unitopt.save
             dogwarrior = @unitopt
             #chain rifle
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = chainrifle
             @unitweapon.save

             #chain rifle
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = chainrifle
             @unitweapon.save

             #grenade 
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = grenades
             @unitweapon.save

             #grenade 
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = smokegrenades
             @unitweapon.save

             #ap ccw 
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = apccw
             @unitweapon.save    
             
             #shock ccw 
              @unitweapon = UnitOptionWeapon.new
              @unitweapon.unit_option_id = @unitopt.id
              @unitweapon.weapon_id = shockccw
              @unitweapon.save 
              
              ###  warrior
              @unitopt = UnitOption.new
              @unitopt.name =""
              @unitopt.lt = false;
              @unitopt.swc=0
              @unitopt.cost=52
              @unitopt.unit_id = @unit.id
              @unitopt.isaddon = false
              @unitopt.save
              dogwarrior = @unitopt
              #heavy SG
              @unitweapon = UnitOptionWeapon.new
              @unitweapon.unit_option_id = @unitopt.id
              @unitweapon.weapon_id = heavysg
              @unitweapon.save

            
              #grenade 
              @unitweapon = UnitOptionWeapon.new
              @unitweapon.unit_option_id = @unitopt.id
              @unitweapon.weapon_id = grenades
              @unitweapon.save

              #grenade 
              @unitweapon = UnitOptionWeapon.new
              @unitweapon.unit_option_id = @unitopt.id
              @unitweapon.weapon_id = smokegrenades
              @unitweapon.save

              #ap ccw 
              @unitweapon = UnitOptionWeapon.new
              @unitweapon.unit_option_id = @unitopt.id
              @unitweapon.weapon_id = apccw
              @unitweapon.save    

              #shock ccw 
               @unitweapon = UnitOptionWeapon.new
               @unitweapon.unit_option_id = @unitopt.id
               @unitweapon.weapon_id = shockccw
               @unitweapon.save
             ############# Dog Face McMURROUGH #########################     

             @unit = Unit.new
             @unit.name ="Dog Face";
             @unit.army_id = 7;
             @unit.mov1 = 4;
             @unit.mov2 = 4;
             @unit.cc = 17;
             @unit.bs = 11;
             @unit.ph = 14;
             @unit.wip = 14;
             @unit.arm = 1;
             @unit.bts = 0;
             @unit.w = 3;
             @unit.avail = 1
             @unit.regular = false
             @unit.impetuous = 1
             @unit.cube = false
             @unit.skills = "Martial Arts 3, CC 2 Weapons, Total Immunity, Super Jump"
             @unit.unit_type_id = 7;
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
             
  ####################### SAITO TŌGAN #################          
             
             @unit = Unit.new
             @unit.name ="Saito Togan";
             @unit.army_id = 7; 
             @unit.mov1 =4;
             @unit.mov2 = 4;
             @unit.cc = 18;
             @unit.bs = 11;
             @unit.ph = 13;
             @unit.wip = 14;
             @unit.arm = 1;
             @unit.bts = 0;
             @unit.w = 1;
             @unit.avail = 1
             @unit.regular = true
             @unit.impetuous = 0
             @unit.cube = true
             @unit.skills = "Martial Arts 4, CH: TO Camouflage, Infiltration"
             @unit.unit_type_id = 3;
             @isaddon = false;
             @unit.save


             ### combirifle
             @unitopt = UnitOption.new
             @unitopt.name =""
             @unitopt.lt = false;
             @unitopt.swc=0
             @unitopt.cost= 41
             @unitopt.unit_id = @unit.id
             @unitopt.isaddon = false
             @unitopt.save





             #combirifle
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = combirifle
             @unitweapon.save
             #smokegrenades
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = smokegrenades
             @unitweapon.save

             #pistol 
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = pistol
             @unitweapon.save

             #ap ccw
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = expccw 
             @unitweapon.save

####################### MIYAMOTO MUSHASHI #################          

@unit = Unit.new
@unit.name ="Miyamoto Mushashi";
@unit.army_id = 7; 
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 22;
@unit.bs = 9;
@unit.ph = 14;
@unit.wip = 15;
@unit.arm = 1;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = false
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Martial Arts 5, CC 2 Weapons, V: No Wound Incapacitation"
@unit.unit_type_id = 7;
@isaddon = false;
@unit.save


### chain rifle
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost= 26
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#chain rifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = chainrifle
@unitweapon.save


#ap ccw
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = apccw 
@unitweapon.save
#ap ccw
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = expccw 
@unitweapon.save


####################### Avicenna #################          

@unit = Unit.new
@unit.name ="Avicenna";
@unit.army_id = 7; 
@unit.mov1 =6;
@unit.mov2 = 4;
@unit.cc = 13;
@unit.bs = 11;
@unit.ph = 13;
@unit.wip = 17;
@unit.arm = 2;
@unit.bts = 0;
@unit.w = 1;
@unit.avail = 1
@unit.regular = true
@unit.impetuous = 0
@unit.cube = true
@unit.skills = "Doctor, V: No Wound Incapacitation"
@unit.unit_type_id = 1;
@isaddon = false;
@unit.save


### combi rifle
@unitopt = UnitOption.new
@unitopt.name =""
@unitopt.lt = false;
@unitopt.swc=0
@unitopt.cost= 32
@unitopt.unit_id = @unit.id
@unitopt.isaddon = false
@unitopt.save





#combi rifle
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = combirifle
@unitweapon.save


#ap ccw
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = pistol 
@unitweapon.save
#ap ccw
@unitweapon = UnitOptionWeapon.new
@unitweapon.unit_option_id = @unitopt.id
@unitweapon.weapon_id = knife 
@unitweapon.save

  end

  def self.down
  end
end
