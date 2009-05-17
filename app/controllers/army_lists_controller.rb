class ArmyListsController < ApplicationController
  require 'listvalidation.rb'
  layout "application", :except => :print
 
  #layout "print",:only=>:print
  # GET /army_lists
  # GET /army_lists.xml
  before_filter :login_required,:except=>[:show,:print]
  
  def print
     @isInch = true
     if(current_user!=nil && !current_user.isinch)
      @isInch = false
     end
    @army_list = ArmyList.find(params[:id],:include=>[:combat_groups=>[:combat_group_units=>[:unit_option=>[:ccweapons,:bsweapons,:unit]]]])
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
    @isInch = true
   if(current_user!=nil && !current_user.isinch)
    @isInch = false
   end
    @army_list = ArmyList.find(params[:id],:include=>[:combat_groups=>[:combat_group_units=>[:unit_option=>[:ccweapons,:bsweapons,:unit]]]])
    @validation = validate_army(@army_list)
    @myList = false
    if(current_user!=nil and current_user.id==@army_list.user_id)
      @myList=true
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
    @current_user = current_user
    @army_list = ArmyList.new(params[:army_list])
    @army_list.user_id = current_user.id
    respond_to do |format|
      if ((@army_list.user_id==current_user.id )and (@army_list.save))
        @combat_group = CombatGroup.new
        @combat_group.army_list_id = @army_list.id
        @combat_group.save
        flash[:notice] = 'ArmyList was successfully created.'
        format.html { redirect_to(@army_list) }
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
        format.html { redirect_to(@army_list) }
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
      format.html { redirect_to(army_lists_url) }
      format.xml  { head :ok }
    end
  end
  
private
  def validate_army(army)
    validation = ListValidation.new
    validation.errors = Array.new
    unitCountHash = Hash.new
    weaponHash = Hash.new
    swctotal = army.maxpointvalue.div(50)
    validation.weapons = Array.new
    #validate swc
    armyswc = 0.0;
    armypoints = 0;
    ltcount = 0
    bonusswc = 0.0;
    army.combat_groups.each_with_index do |cgroup,i|
      validation.combatgrouporders[i]=0
      validation.modelcount[i]=0
      cgroup.combat_group_units.each do |unit|
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
    return validation
  end
end
