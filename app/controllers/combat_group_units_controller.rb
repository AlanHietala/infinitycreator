class CombatGroupUnitsController < ApplicationController
    layout "application"
    before_filter :login_required
  def movelower
     @combat_group_unit = CombatGroupUnit.find(params[:id],:include=>[:combat_group=>:army_list])
     respond_to do |format|
        if(current_user!=nil and @combat_group_unit.combat_group.army_list.user_id==current_user.id)
          @combat_group_unit.move_lower
        end
        format.html { redirect_to([current_user,@combat_group_unit.combat_group.army_list]) }
        format.xml  { head :ok }
      end
  end
  
  def movehigher
    @combat_group_unit = CombatGroupUnit.find(params[:id],:include=>[:combat_group=>:army_list])

      respond_to do |format|
          if(current_user!=nil and @combat_group_unit.combat_group.army_list.user_id==current_user.id)
            @combat_group_unit.move_higher
          end
          format.html { redirect_to([current_user,@combat_group_unit.combat_group.army_list]) }
          format.xml  { head :ok }
        end
  end
  # GET /combat_group_units
  # GET /combat_group_units.xml
  def index
    @combat_group_units = CombatGroupUnit.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @combat_group_units }
    end
  end

  # GET /combat_group_units/1
  # GET /combat_group_units/1.xml
  def show
    @combat_group_unit = CombatGroupUnit.find(params[:id])
    @isInch = true
     
    if(current_user!=nil && !current_user.isinch)
     @isInch = false
    end
    @isMerc = false;
    respond_to do |format|
      format.html # show.html.erb
      format.mobile
      format.xml  { render :xml => @combat_group_unit }
    end
  end

  # GET /combat_group_units/new
  # GET /combat_group_units/new.xml
  def new
    @army_list = ArmyList.find(params[:army_list_id])
    @isInch = true
   if(current_user!=nil && !current_user.isinch)
    @isInch = false
   end
    if(@army_list.user_id!=current_user.id) #check if we're logged in
      redirect_to([current_user,@armylist])
    end
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
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @combat_group_unit }
    end
  end

  # GET /combat_group_units/1/edit
  def edit
    @combat_group_unit = CombatGroupUnit.find(params[:id])
  end

  # POST /combat_group_units
  # POST /combat_group_units.xml
  def create
    @combat_group_unit = CombatGroupUnit.new(params[:combat_group_unit])
    @combatgroup = CombatGroup.find(@combat_group_unit.combat_group_id,:include=>[:army_list]);
    
    respond_to do |format|
      if( (@combatgroup.army_list.user_id==current_user.id) and (@combat_group_unit.save))
        #handle special cases
        if(@combat_group_unit.unit_option_id == 85)#antipode
          addunit = CombatGroupUnit.new(params[:combat_group_unit])
          addunit.unit_option_id = 86
          addunit.save
        elsif(@combat_group_unit.unit_option_id == 86)#antipode handler
          addunit = CombatGroupUnit.new(params[:combat_group_unit])
          addunit.unit_option_id = 85
          addunit.save
          
        elsif(@combat_group_unit.unit_option_id == 437 or @combat_group_unit.unit_option_id == 439 )
          addunit = CombatGroupUnit.new(params[:combat_group_unit]) #auxbot1
          addunit.unit_option_id = 440
          addunit.save
          
         elsif(@combat_group_unit.unit_option_id == 438)
            addunit = CombatGroupUnit.new(params[:combat_group_unit]) #auxbot 2
            addunit.unit_option_id = 441 
            addunit.save
        else 
          
        end
        
        flash[:notice] = 'CombatGroupUnit was successfully created.'
        format.html { redirect_to([current_user,@combatgroup.army_list]) }
        format.xml  { render :xml => @combat_group_unit, :status => :created, :location => @combat_group_unit }
      else
        format.html { redirect_to([current_user,@combatgroup.army_list]) }
        format.xml  { render :xml => @combat_group_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /combat_group_units/1
  # PUT /combat_group_units/1.xml
  def update
    @combat_group_unit = CombatGroupUnit.find(params[:id],:include=>[:combat_group=>:army_list])
    
    

    respond_to do |format|
      if (current_user!=nil and @combat_group_unit.combat_group.army_list.user_id==current_user.id and @combat_group_unit.update_attributes(params[:combat_group_unit]))
        flash[:notice] = 'CombatGroupUnit was successfully updated.'
        format.html { redirect_to(@combat_group_unit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @combat_group_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /combat_group_units/1
  # DELETE /combat_group_units/1.xml
  def destroy
    
    @combat_group_unit = CombatGroupUnit.find(params[:id],:include=>[:combat_group=>:army_list])
    
    if(current_user!=nil and @combat_group_unit.combat_group.army_list.user_id==current_user.id)
	@combat_group_unit.destroy
    end

    respond_to do |format|
      format.html { redirect_to([current_user,@combat_group_unit.combat_group.army_list]) }
      format.xml  { head :ok }
    end
  end
  
  
  def getunit
     
      @isInch = true
     if(current_user!=nil && !current_user.isinch)
      @isInch = false
     end
   render :partial=>"unitcard", :object=>Unit.find(:first,:conditions=>["id=?",params[:unit_id]],:include=>[:unit_options=>[:bsweapons,:ccweapons]]),:locals=>{:isInch=>@isInch}
  end
  
  def getunitoptiondetails
    render :json=>UnitOption.find(params[:unit_option_id],:include=>[:ccweapons,:bsweapons,:unit])
  end
  
  def getunits
    render :json=>Unit.find(:all,:conditions=>["army_id=?",params[:unit_id]])
  end
end
