class Update5 < ActiveRecord::Migration
  def self.up
    add_column(:unit_types, :orderid, :int);
    li = UnitType.find(1);
    hi = UnitType.find(2);
    sk = UnitType.find(3);
    li.orderid = 1;
    hi.orderid = 3;
    sk.orderid = 4;
    
    mi = UnitType.new
    mi.name = "Medium Infantry"
    mi.abr = "MI"
    mi.orderid = 2;
    mi.save
    
    rem = UnitType.new
    rem.name = "Remote"
    rem.abr = "REM"
    rem.orderid = 5
    rem.save
    
    tag = UnitType.new
    tag.name = "T.A.G."
    tag.abr = "TAG"
    tag.orderid = 6
    tag.save
    
    #daturazi
    dat = Unit.find(63)
    dat.skills ="morat, Martial Arts 4 , CH:Mimetism, Coma"
    dat.save
    #update unit option for dat from combi to chain rifle
    uwep = UnitOptionWeapon.find(949)
    uwep.weapon_id = 16
    uwep.save
    
    # add LT to the ORC
    orc = UnitOption.find(400)
    orc.lt = true
    orc.save
    
    # add lt to santiago
    knight = UnitOption.find(444)
    knight.lt = true
    knight.save
    
    
    ####
    
    ################ Guardian ##############

    @unit = Unit.new
    @unit.name ="Yaozao";
    @unit.army_id = 6;
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
    @unit.isaddon = true
    @unit.skills = "CH: Mimetism"
    @unit.unit_type_id = rem.id;
    @isaddon = false;
    @unit.save


    ### epulse   
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
    @unitweapon.weapon_id = 3
    @unitweapon.save
    
    
  ##########  ### Aragoto Senken
    @unit = Unit.new
    @unit.name ="Aragoto";
    @unit.army_id = 6;
    @unit.mov1 =8;
    @unit.mov2 = 6;
    @unit.cc = 14;
    @unit.bs = 12;
    @unit.ph = 11;
    @unit.wip = 13;
    @unit.arm = 2;
    @unit.bts = 0;
    @unit.w = 1;
    @unit.avail = 2
    @unit.regular = true
    @unit.impetuous = 1
    @unit.cube = true
    @unit.isaddon = false
    @unit.skills = "CH: Mimetism, Motorcycle"
    @unit.unit_type_id = 3;
    @isaddon = false;
    @unit.save


    ### combi rifle 
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
    @unitweapon.weapon_id = 17
    @unitweapon.save
    
    #light sg 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 33
    @unitweapon.save
    
    #pistol
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 42
    @unitweapon.save
    
    #knife 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 6
    @unitweapon.save
    
    ### boardingsg 
    @unitopt = UnitOption.new
    @unitopt.name =""
    @unitopt.lt = false;
    @unitopt.swc=0
    @unitopt.cost=21
    @unitopt.unit_id = @unit.id
    @unitopt.isaddon = false
    @unitopt.save



    #boardingsg 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 15
    @unitweapon.save
    
    
    #pistol
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 42
    @unitweapon.save
    
    #knife 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 6
    @unitweapon.save
    
    ### spitfire rifle 
    @unitopt = UnitOption.new
    @unitopt.name =""
    @unitopt.lt = false;
    @unitopt.swc=1
    @unitopt.cost=29
    @unitopt.unit_id = @unit.id
    @unitopt.isaddon = false
    @unitopt.save



    #spitfire 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 54
    @unitweapon.save
    
    
    #pistol
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 42
    @unitweapon.save
    
    #knife 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 6
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



    #combirifle 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 17
    @unitweapon.save
    
    #light sg 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 33
    @unitweapon.save
    
    #pistol
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 42
    @unitweapon.save
    
    #knife 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 6
    @unitweapon.save
    
    ### LT 
    @unitopt = UnitOption.new
    @unitopt.name ="LT (Japanese Sectorial Only)"
    @unitopt.lt = true;
    @unitopt.swc=0.5
    @unitopt.cost=25
    @unitopt.unit_id = @unit.id
    @unitopt.isaddon = false
    @unitopt.save



    #combirifle 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 17
    @unitweapon.save
    
    #light sg 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 33
    @unitweapon.save
    
    #pistol
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 42
    @unitweapon.save
    
    #knife 
    @unitweapon = UnitOptionWeapon.new
    @unitweapon.unit_option_id = @unitopt.id
    @unitweapon.weapon_id = 6
    @unitweapon.save
    
    
    ##########  ### Karakuri
      @unit = Unit.new
      @unit.name ="Karakuri";
      @unit.army_id = 6;
      @unit.mov1 =4;
      @unit.mov2 = 4;
      @unit.cc = 10;
      @unit.bs = 12;
      @unit.ph = 11;
      @unit.wip = 13;
      @unit.arm = 3;
      @unit.bts = -6;
      @unit.w = 2;
      @unit.avail = 1
      @unit.regular = true
      @unit.impetuous = 0
      @unit.cube = true
      @unit.isaddon = false
      @unit.skills = "Explode, Total Immunity"
      @unit.unit_type_id = mi.id;
      @isaddon = false;
      @unit.save


      ### combi rifle Forward Observer 
      @unitopt = UnitOption.new
      @unitopt.name ="(Forward Observer)"
      @unitopt.lt = false;
      @unitopt.swc=0
      @unitopt.cost=39
      @unitopt.unit_id = @unit.id
      @unitopt.isaddon = false
      @unitopt.save



      #combirifle 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = 17
      @unitweapon.save

      #chain rifle
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = 16
      @unitweapon.save

       #D.E.P.
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = 49
        @unitweapon.save

      #pistol
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = 42
      @unitweapon.save

      #knife 
      @unitweapon = UnitOptionWeapon.new
      @unitweapon.unit_option_id = @unitopt.id
      @unitweapon.weapon_id = 6
      @unitweapon.save
    
    
       ### mk12 Forward Observer 
        @unitopt = UnitOption.new
        @unitopt.name ="(Forward Observer)"
        @unitopt.lt = false;
        @unitopt.swc=0
        @unitopt.cost=43
        @unitopt.unit_id = @unit.id
        @unitopt.isaddon = false
        @unitopt.save



        #mk12 
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = 53
        @unitweapon.save

        #chain rifle
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = 16
        @unitweapon.save
        
        #D.E.P.
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = 49
          @unitweapon.save

        #pistol
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = 42
        @unitweapon.save

        #knife 
        @unitweapon = UnitOptionWeapon.new
        @unitweapon.unit_option_id = @unitopt.id
        @unitweapon.weapon_id = 6
        @unitweapon.save
    
    
        ### mk12 Forward Observer 
          @unitopt = UnitOption.new
          @unitopt.name ="(Forward Observer)"
          @unitopt.lt = false;
          @unitopt.swc=0
          @unitopt.cost=42
          @unitopt.unit_id = @unit.id
          @unitopt.isaddon = false
          @unitopt.save



          #heavy sg 
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = 29
          @unitweapon.save

          #chain rifle
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = 16
          @unitweapon.save

          #D.E.P.
            @unitweapon = UnitOptionWeapon.new
            @unitweapon.unit_option_id = @unitopt.id
            @unitweapon.weapon_id = 49
            @unitweapon.save

          #pistol
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = 42
          @unitweapon.save

          #knife 
          @unitweapon = UnitOptionWeapon.new
          @unitweapon.unit_option_id = @unitopt.id
          @unitweapon.weapon_id = 6
          @unitweapon.save
          
          ##########  ### Kempeitai
             @unit = Unit.new
             @unit.name ="Kempeitai";
             @unit.army_id = 6;
             @unit.mov1 =4;
             @unit.mov2 = 4;
             @unit.cc = 10;
             @unit.bs = 12;
             @unit.ph = 11;
             @unit.wip = 13;
             @unit.arm = 3;
             @unit.bts = -6;
             @unit.w = 2;
             @unit.avail = 1
             @unit.regular = true
             @unit.impetuous = 0
             @unit.cube = true
             @unit.isaddon = false
             @unit.skills = "6th Sense 1, V:Courage"
             @unit.unit_type_id = li.id;
             @isaddon = false;
             @unit.save


             ### combi rifle
             @unitopt = UnitOption.new
             @unitopt.name =""
             @unitopt.lt = false;
             @unitopt.swc=0
             @unitopt.cost=17
             @unitopt.unit_id = @unit.id
             @unitopt.isaddon = false
             @unitopt.save



             #combirifle 
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 17
             @unitweapon.save
             
             #pistol
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 42
             @unitweapon.save
             #ccweapon
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 2
             @unitweapon.save
             #epulse
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 3
             @unitweapon.save
             
             ### boarding sg
             @unitopt = UnitOption.new
             @unitopt.name =""
             @unitopt.lt = false;
             @unitopt.swc=0
             @unitopt.cost=17
             @unitopt.unit_id = @unit.id
             @unitopt.isaddon = false
             @unitopt.save



             #boardingsg 
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 15
             @unitweapon.save
             
             #pistol
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 42
             @unitweapon.save
             #ccweapon
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 2
             @unitweapon.save
             #epulse
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 3
             @unitweapon.save
             
             ### combi rifle chain of command
             @unitopt = UnitOption.new
             @unitopt.name ="Chain of Command (Japanese Sectorial Only)"
             @unitopt.lt = false;
             @unitopt.swc=0
             @unitopt.cost=17
             @unitopt.unit_id = @unit.id
             @unitopt.isaddon = false
             @unitopt.save



             #combirifle 
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 17
             @unitweapon.save
             
             #pistol
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 42
             @unitweapon.save
             #ccweapon
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 2
             @unitweapon.save
             #epulse
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 3
             @unitweapon.save
             
             ### boarding sg
             @unitopt = UnitOption.new
             @unitopt.name ="Chain of Command (Japanese Sectorial Only)"
             @unitopt.lt = false;
             @unitopt.swc=0
             @unitopt.cost=17
             @unitopt.unit_id = @unit.id
             @unitopt.isaddon = false
             @unitopt.save



             #boardingsg 
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 15
             @unitweapon.save
             
             #pistol
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 42
             @unitweapon.save
             #ccweapon
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 2
             @unitweapon.save
             #epulse
             @unitweapon = UnitOptionWeapon.new
             @unitweapon.unit_option_id = @unitopt.id
             @unitweapon.weapon_id = 3
             @unitweapon.save
    
  end

  def self.down
    remove_column(:unit_types, :orderid);
  end
end