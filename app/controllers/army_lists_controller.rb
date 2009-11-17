class ArmyListsController < ApplicationController
  require 'listvalidation.rb'
  layout "application", :except => :print
 
  #layout "print",:only=>:print
  # GET /army_lists
  # GET /army_lists.xml
  before_filter :login_required,:except=>[:show,:print,:search]
  def search
    if(params[:army_list]!=nil&&params[:pmin]!=nil && params[:pmax]!=nil)
      pageNum = 1;
      if(params[:page] != nil)
        pageNum = params[:page];
      end
      @results = ArmyList.search(params[:pmin],params[:pmax],params[:army_list][:army_id],pageNum);
      #@results = ArmyList.find(:all,:conditions => ['maxpointvalue <= ? and maxpointvalue >= ? and army_id = ?', params[:minp],params[:maxp],params[:army_id]])
    
    
    end
  
    
  end
  def print
     @isInch = true
     if(current_user!=nil && !current_user.isinch)
      @isInch = false
     end
    @army_list = ArmyList.find(params[:id],:include=>[:combat_groups=>[:combat_group_units=>[:unit_option=>[:ccweapons,:bsweapons,:unit]]]])
    @isMerc = false;
    if(@army_list.army_id == 7)
      @isMerc = true;
    end
    @validation = validate_army(@army_list)
    respond_to do |format|
      format.html {render :layout=>"print"}# show.html.erb
      format.xml  { render :xml => @army_list }
    end
    
    
  end
  
  def index
    store_location
    @current_user = current_user
    @army_lists = ArmyList.find(:all,:conditions=>['user_id=?',current_user.id],:include=>[:army])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @army_lists }
    end
  end

  # GET /army_lists/1
  # GET /army_lists/1.xml
  def show
    store_location
    @favourite = Favourite.new
    @favourited = false 
    
    @isInch = true
    if(current_user!=nil)
     @favourited = Favourite.exists?(["user_id = ? and army_list_id = ?",current_user.id,params[:id]])
    end
   if(current_user!=nil && !current_user.isinch)
    @isInch = false
   end
   @isMerc = false;
    @army_list = ArmyList.find(params[:id],:include=>[:combat_groups=>[:combat_group_units=>[:unit_option=>[:ccweapons,:bsweapons,:unit]]]])
    if(@army_list.army_id != 7)
      @validation = validate_army(@army_list)
    else
     @validation = validate_mercarmy(@army_list)
     @isMerc = true
    end
    @myList = false
    if(current_user!=nil and current_user.id==@army_list.user_id)
      @myList=true
    end
    
    if(@myList)
      
      
      if(@army_list.army_id<7)
        @units = Unit.find(:all,:conditions=>['army_id in (?,7)',@army_list.army_id])
      else
        @units = Unit.find(:all,:conditions=>['army_id in (1,3,4,5,6,7) and isMerc = true'])
      end
      @li = Array.new
      @mi  = Array.new
      @hi = Array.new
      @sk = Array.new
      @wb = Array.new
      @rem = Array.new
      @tag = Array.new
      @units.each do |unit|
          case unit.unit_type_id 
            when 1 then @li<<unit
            when 4 then @mi<<unit
            when 2 then @hi<<unit
            when 3 then @sk<<unit
            when 7 then @wb << unit
            when 5 then @rem << unit
            when 6 then @tag << unit
          end
      end
       if(@army_list.army_id<7)
          @firstunit = Unit.find(:first,:conditions=>["army_id in (?,7)",@army_list.army_id],:include=>[:unit_options=>[:bsweapons,:ccweapons]])
        else
          @firstunit = Unit.find(:first,:conditions=>['army_id in (1,3,4,5,6,7) and isMerc = true'],:include=>[:unit_options=>[:bsweapons,:ccweapons]])
        end

      @combat_group_unit = CombatGroupUnit.new
      
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @army_list }
    end
  end

  # GET /army_lists/new
  # GET /army_lists/new.xml
  def new
    store_location
    @current_user = current_user
    @army_list = ArmyList.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @army_list }
    end
  end

  # GET /army_lists/1/edit
  def edit
    @army_list = ArmyList.find(params[:id])
  end

  # POST /army_lists
  # POST /army_lists.xml
  def create
    store_location
    #expire cache
    expire_page({:controller => 'pages', :action => 'index'})
    
    @current_user = current_user
    @army_list = ArmyList.new(params[:army_list])
    @army_list.user_id = current_user.id
    respond_to do |format|
      if ((@army_list.user_id==current_user.id )and (@army_list.save))
        @combat_group = CombatGroup.new
        @combat_group.army_list_id = @army_list.id
        @combat_group.save
        flash[:notice] = 'ArmyList was successfully created.'
        format.html { redirect_to([current_user,@army_list]) }
        format.xml  { render :xml => @army_list, :status => :created, :location => @army_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @army_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /army_lists/1
  # PUT /army_lists/1.xml
  def update
    store_location
    @current_user = current_user
    @army_list = ArmyList.find(params[:id])

    respond_to do |format|
      
      if ((@army_list.user_id == current_user.id) and @army_list.update_attributes(params[:army_list]))
        flash[:notice] = 'ArmyList was successfully updated.'
        format.html { redirect_to([current_user,@army_list]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @army_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /army_lists/1
  # DELETE /army_lists/1.xml
  def destroy
    @current_user = current_user
    @army_list = ArmyList.find(params[:id])
    if(@army_list.user_id == current_user.id)
      @army_list.combat_groups.each do |g|
        g.combat_group_units.each do |c|
          c.destroy
        end
        g.destroy
      end
      @army_list.destroy
    end

    respond_to do |format|
      format.html { redirect_to(user_army_lists_url(current_user)) }
      format.xml  { head :ok }
    end
  end
  
private
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
  def validate_army(army)
    validation = ListValidation.new
    validation.errors = Array.new
    unitCountHash = Hash.new
    weaponHash = Hash.new
    swctotal = army.maxpointvalue.div(50)
    validation.weapons = Array.new
    bbcode ="[code]"
    #validate swc
    armyswc = 0.0;
    armypoints = 0;
    ltcount = 0
    bonusswc = 0.0;
    army.combat_groups.each_with_index do |cgroup,i|
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
    
    if(armypoints>army.maxpointvalue)
      validation.errors<<"actual points: "+armypoints.to_s+" allowed: "+army.maxpointvalue.to_s
    end
    validation.actualpoints = armypoints
    validation.allowedpoints = army.maxpointvalue
    
    bbcode = bbcode + "\r\nTotal SWC: " + armyswc.to_s+"         Total Points: "+ armypoints.to_s+"[/code]"
    validation.bbcode = bbcode
    return validation
  end
  ### Validation code for a Mercenary army it is handled differently
  def validate_mercarmy(army)
    validation = ListValidation.new
    validation.errors = Array.new
    unitCountHash = Hash.new
    weaponHash = Hash.new
    armyHash = Hash.new
    bbcode ="[code]"
    swctotal = army.maxpointvalue.div(50)
    ava1total = army.maxpointvalue.div(200)
    validation.weapons = Array.new
    #validate swc
    numArmies = 0;
    armyswc = 0.0;
    armypoints = 0;
    ltcount = 0
    bonusswc = 0.0;
    armyava1 = 0
    army.combat_groups.each_with_index do |cgroup,i|
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
    
    if(armypoints>army.maxpointvalue)
      validation.errors<<"actual points: "+armypoints.to_s+" allowed: "+army.maxpointvalue.to_s
    end
    validation.actualpoints = armypoints
    validation.allowedpoints = army.maxpointvalue
    
    bbcode = bbcode + "\r\nTotal SWC: " + armyswc.to_s+"         Total Points: "+ armypoints.to_s+"[/code]"
    validation.bbcode = bbcode
    return validation
  end
end
