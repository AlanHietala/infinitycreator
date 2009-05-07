class CombatGroupUnitsController < ApplicationController
    before_filter :login_required
  
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

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @combat_group_unit }
    end
  end

  # GET /combat_group_units/new
  # GET /combat_group_units/new.xml
  def new
    @army_list = ArmyList.find(params[:army_list_id])
    if(@army_list.user_id!=current_user.id) #check if we're logged in
      redirect_to(@armylist)
    end
    @units = Unit.find(:all,:conditions=>['army_id=?',@army_list.army_id])
    @firstunit = Unit.find(:first,:conditions=>["army_id=?",@army_list.army_id],:include=>[:unit_options=>[:bsweapons,:ccweapons]])
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
        else 
          
        end
        
        flash[:notice] = 'CombatGroupUnit was successfully created.'
        format.html { redirect_to(@combatgroup.army_list) }
        format.xml  { render :xml => @combat_group_unit, :status => :created, :location => @combat_group_unit }
      else
        format.html { redirect_to(@combatgroup.army_list) }
        format.xml  { render :xml => @combat_group_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /combat_group_units/1
  # PUT /combat_group_units/1.xml
  def update
    @combat_group_unit = CombatGroupUnit.find(params[:id])

    respond_to do |format|
      if @combat_group_unit.update_attributes(params[:combat_group_unit])
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
    
    @combat_group_unit = CombatGroupUnit.find(params[:id],:include=>:combat_group)
    army_list_id = @combat_group_unit.combat_group.army_list_id
    armyList = ArmyList.find(army_list_id)
    if(current_user!=nil and armyList.user_id==current_user.id)
	@combat_group_unit.destroy
    end

    respond_to do |format|
      format.html { redirect_to(army_list_path(army_list_id)) }
      format.xml  { head :ok }
    end
  end
  
  
  def getunit
   render :partial=>"unitcard", :object=>Unit.find(:first,:conditions=>["id=?",params[:unit_id]],:include=>[:unit_options=>[:bsweapons,:ccweapons]])
  end
  
  def getunitoptiondetails
    render :json=>UnitOption.find(params[:unit_option_id],:include=>[:ccweapons,:bsweapons,:unit])
  end
  
  def getunits
    render :json=>Unit.find(:all,:conditions=>["army_id=?",params[:unit_id]])
  end
end
