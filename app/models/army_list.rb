class ArmyList < ActiveRecord::Base
  belongs_to :army
  has_many :combat_groups
  belongs_to :user
  validates_presence_of :maxpointvalue
  validates_numericality_of :maxpointvalue, :only_integer => true
  validates_presence_of :name  
  
  def self.validate()
  
  end
  
  def self.search(min,max,armyid,page)
    paginate :per_page => 20, :page => page,
               :conditions => ['maxpointvalue >= ? and maxpointvalue <= ? and army_id = ?', min,max,armyid], :order => 'created_at DESC'
    
  end
  
  def self.get_BBCode()
    
  end
  
  def validate_army()
    if(self.army_id == 7)
      return self.validate_merc()
    else
      return self.validate_normal()
    end
  end
  

  
  def validate_merc()
     validation = ListValidation.new
      validation.errors = Array.new
      unitCountHash = Hash.new
      weaponHash = Hash.new
      armyHash = Hash.new
      bbcode ="[code]"
      swctotal = self.maxpointvalue.div(50)
      ava1total = self.maxpointvalue.div(200)
      validation.weapons = Array.new
      #validate swc
      numArmies = 0;
      armyswc = 0.0;
      armypoints = 0;
      ltcount = 0
      bonusswc = 0.0;
      armyava1 = 0
      self.combat_groups.each_with_index do |cgroup,i|
        validation.combatgrouporders[i]=0
        validation.modelcount[i]=0
        # do bbcode group header
          combatgroupheader = bbcodeHeader(i);
          combatgroupunits = ""
        cgroup.combat_group_units.each do |unit|
          combatgroupunits = combatgroupunits + bbcodeUnit(unit);


          #check if this unit gives an order to the pool
          if(unit.unit_option.unit.regular && !unit.unit_option.unit.ghost)
            validation.combatgrouporders[i] = validation.combatgrouporders[i] + 1
          end
          #check if the unit counts towards the model count
          if(!unit.unit_option.unit.isaddon)
            validation.modelcount[i] = validation.modelcount[i] + 1
          end
          #check if this is an LT
          if(unit.unit_option.lt)
            ltcount = ltcount+1
          end
          #check if it provides bonus swc
          if(unit.unit_option.bonusswc>0)
            bonusswc = bonusswc+1
          end
         #add weapons to the weapon list
         unit.unit_option.bsweapons.each do |bs|
           if(weaponHash[bs.name]==nil)
             weaponHash[bs.name]=true
             validation.weapons<<bs
           end
         end
         unit.unit_option.ccweapons.each do |cc|
            if(weaponHash[cc.name]==nil)
              weaponHash[cc.name]=true
              validation.weapons<<cc
            end

         end

         #add army to the army hash
         if(armyHash[unit.unit_option.unit.army_id.to_s]==nil)
           armyHash[unit.unit_option.unit.army_id.to_s] = true
            numArmies = numArmies +1
         end
         if(unit.unit_option.unit.avail>1)## check availablity validity
           if(unitCountHash[unit.unit_option.unit.name]==nil) #First time we've seen this unit
             unitCountHash[unit.unit_option.unit.name]=1;

           else #seen this unit before, increment
             unitCountHash[unit.unit_option.unit.name]=unitCountHash[unit.unit_option.unit.name] + 1

           end
           if(unitCountHash[unit.unit_option.unit.name]>unit.unit_option.unit.avail.div(2)) #check if it has exceeded
              if(unitCountHash[unit.unit_option.unit.name]==unit.unit_option.unit.avail+1)
                validation.errors<<"Too many "+unit.unit_option.unit.name+" in army max is "+unit.unit_option.unit.avail.to_s
              else
              end
           end

         elsif(unit.unit_option.unit.avail==1) #the special 200 point case for ava 1
           if(unitCountHash[unit.unit_option.unit.name]==nil) #First time we've seen this unit
              unitCountHash[unit.unit_option.unit.name]=1;
              armyava1 = armyava1+1
            else #seen this unit before, increment
              unitCountHash[unit.unit_option.unit.name]=unitCountHash[unit.unit_option.unit.name] + 1
              armyava1 = armyava1+1
            end
            if(unitCountHash[unit.unit_option.unit.name]>1) #check if it has exceeded

                 validation.errors<<"Too many "+unit.unit_option.unit.name+" in army max is 1"

            end

         else # Total ava = ava 4 in mercs
            if(unitCountHash[unit.unit_option.unit.name]==nil) #First time we've seen this unit
               unitCountHash[unit.unit_option.unit.name]=1;

             else #seen this unit before, increment
               unitCountHash[unit.unit_option.unit.name]=unitCountHash[unit.unit_option.unit.name] + 1

             end
             if(unitCountHash[unit.unit_option.unit.name]>4)
                validation.errors<<"Too many "+unit.unit_option.unit.name+" in army max is 4"
             else
             end

         end
         if(numArmies>3)
            validation.errors<<"Too many armies used in merc force. maximum is 3"
         end
         if(unit.unit_option.swc<0.0)
  		bonusswc = bonusswc - unit.unit_option.swc
  	else
  	armyswc = armyswc + unit.unit_option.swc
  	end
         armypoints = armypoints + unit.unit_option.cost
        end

        combatgroupheader = combatgroupheader + "     Orders: " +validation.combatgrouporders[i].to_s+"\r\n\r\n"
        bbcode = bbcode + combatgroupheader + combatgroupunits
        if(validation.combatgrouporders[i]>10)
          validation.errors<<"Combat Group "+(i+1).to_s+" has too many units"
        end
      end

      if(armyava1>ava1total)
        validation.errors<<"Too many Ava 1 Units Max is " +ava1total.to_s
      end
      if(ltcount<1)
        validation.errors<<"No Lieutenant"
      end
      totalmaxswc = swctotal + bonusswc
      validation.maxswc = totalmaxswc
      validation.currentswc = armyswc
      if(armyswc>totalmaxswc)
        validation.errors<<"actual SWC: "+armyswc.to_s+" allowed: "+totalmaxswc.to_s;
      end

      if(armypoints>self.maxpointvalue)
        validation.errors<<"actual points: "+armypoints.to_s+" allowed: "+self.maxpointvalue.to_s
      end
      validation.actualpoints = armypoints
      validation.allowedpoints = self.maxpointvalue

      bbcode = bbcode + "\r\nTotal SWC: " + armyswc.to_s+"         Total Points: "+ armypoints.to_s+"[/code]\r\nGenerated with [url=http://infinitypool.failedsave.com]Infinity Pool[/url]"
      validation.bbcode = bbcode
      return validation
    
  end
  def validate_normal()
    validation = ListValidation.new
    validation.errors = Array.new
    unitCountHash = Hash.new
    weaponHash = Hash.new
    swctotal = self.maxpointvalue.div(50)
    validation.weapons = Array.new
    bbcode ="[code]"
    #validate swc
    armyswc = 0.0;
    armypoints = 0;
    ltcount = 0
    bonusswc = 0.0;
    self.combat_groups.each_with_index do |cgroup,i|
      validation.combatgrouporders[i]=0
      validation.modelcount[i]=0
      
      # do bbcode group header
      combatgroupheader = bbcodeHeader(i);
      combatgroupunits = ""
      cgroup.combat_group_units.each do |unit|
        combatgroupunits = combatgroupunits + bbcodeUnit(unit);
        
        #check if this unit gives an order to the pool
        if(unit.unit_option.unit.regular && !unit.unit_option.unit.ghost)
          validation.combatgrouporders[i] = validation.combatgrouporders[i] + 1
        end
        #check if the unit counts towards the model count
        if(!unit.unit_option.unit.isaddon)
          validation.modelcount[i] = validation.modelcount[i] + 1
        end
        #check if this is an LT
        if(unit.unit_option.lt)
          ltcount = ltcount+1
        end
        #check if it provides bonus swc
        if(unit.unit_option.bonusswc>0)
          bonusswc = bonusswc+1
        end
       #add weapons to the weapon list
       unit.unit_option.weapons.each do |bs|
         if(weaponHash[bs.name]==nil)
           weaponHash[bs.name]=true
           validation.weapons<<bs
         end
       end
       if(unit.unit_option.unit.avail>0)## check availablity validity
         if(unitCountHash[unit.unit_option.unit.name]==nil) #First time we've seen this unit
           unitCountHash[unit.unit_option.unit.name]=1;
         
         else #seen this unit before, increment
           unitCountHash[unit.unit_option.unit.name]=unitCountHash[unit.unit_option.unit.name] + 1
         
         end
         if(unitCountHash[unit.unit_option.unit.name]>unit.unit_option.unit.avail) #check if it has exceeded
            if(unitCountHash[unit.unit_option.unit.name]==unit.unit_option.unit.avail+1)
              validation.errors<<"Too many "+unit.unit_option.unit.name+" in army max is "+unit.unit_option.unit.avail.to_s
            else
            end
         end
       end
       if(unit.unit_option.swc<0.0)
	    	bonusswc = bonusswc - unit.unit_option.swc
       else
    	  armyswc = armyswc + unit.unit_option.swc
    	 end
       armypoints = armypoints + unit.unit_option.cost
      end
      combatgroupheader = combatgroupheader + "     Orders: " +validation.combatgrouporders[i].to_s+"\r\n\r\n"
      bbcode = bbcode + combatgroupheader + combatgroupunits
      if(validation.combatgrouporders[i]>10)
        validation.errors<<"Combat Group "+(i+1).to_s+" has too many units"
      end
    end
    
     
    if(ltcount<1)
      validation.errors<<"No Lieutenant"
    end
    totalmaxswc = swctotal + bonusswc
    validation.maxswc = totalmaxswc
    validation.currentswc = armyswc
    if(armyswc>totalmaxswc)
      validation.errors<<"actual SWC: "+armyswc.to_s+" allowed: "+totalmaxswc.to_s;
    end
    
    if(armypoints>self.maxpointvalue)
      validation.errors<<"actual points: "+armypoints.to_s+" allowed: "+self.maxpointvalue.to_s
    end
    validation.actualpoints = armypoints
    validation.allowedpoints = self.maxpointvalue
    
    bbcode = bbcode + "\r\nTotal SWC: " + armyswc.to_s+"         Total Points: "+ armypoints.to_s+"[/code]\r\nGenerated with [url='http://infinitypool.failedsave.com']Infinity Pool[/url]"
    validation.bbcode = bbcode
    return validation
    
  end
  
  def bbcodeHeader(index)
    return "\r\nCombat Group "+(index+1).to_s;
    
  end
  def bbcodeUnit(unit)
    #add this unit to the bbcode
    combatgroupunits =""
    linelength = unit.unit_option.unit.name.length
    combatgroupunits = combatgroupunits + unit.unit_option.unit.name+" &raquo; "
    if (unit.unit_option.name == nil or unit.unit_option.name=="")
      unit.unit_option.bsweapons.each_with_index do |bs,ind|

      	if(!bs.cc and ind<2)
      	    n = bs.abbr != nil ? bs.abbr : bs.name;
      	    combatgroupunits = combatgroupunits + n;
      	    linelength = linelength + n.length
    		end

      end
    else
      linelength = linelength + unit.unit_option.name.length
      combatgroupunits = combatgroupunits + unit.unit_option.name;
    end
    spacetab = 50
    whitespacecounter = spacetab-linelength;
    while(whitespacecounter>=0 and whitespacecounter<spacetab)
      combatgroupunits = combatgroupunits + " ";
      whitespacecounter = whitespacecounter - 1;
    end
    return combatgroupunits = combatgroupunits+"SWC:"+unit.unit_option.swc.to_s+"     Cost:"+unit.unit_option.cost.to_s+ "\r\n"
    
  end
end
