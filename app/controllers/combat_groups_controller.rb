class CombatGroupsController < ApplicationController
  # GET /combat_groups
  # GET /combat_groups.xml
  before_filter :login_required
  def index
    @combat_groups = CombatGroup.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @combat_groups }
    end
  end

  # GET /combat_groups/1
  # GET /combat_groups/1.xml
  def show
    @combat_group = CombatGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @combat_group }
    end
  end

  # GET /combat_groups/new
  # GET /combat_groups/new.xml
  def new
    @combat_group = CombatGroup.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @combat_group }
    end
  end

  # GET /combat_groups/1/edit
  def edit
    @combat_group = CombatGroup.find(params[:id])
  end

  # POST /combat_groups
  # POST /combat_groups.xml
  def create
    @army_list = ArmyList.find(params[:army_list_id])
    if(@army_list.user_id ==current_user.id) #check if we own the army list
      @combat_group = CombatGroup.new()
      @combat_group.army_list_id = @army_list.id
      
    else
      redirect_to(@army_list)
    end
    
    
      respond_to do |format|
        if @combat_group.save
          flash[:notice] = 'CombatGroup was successfully created.'
          format.html { redirect_to(@army_list) }
          format.xml  { render :xml => @combat_group, :status => :created, :location => @combat_group }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @combat_group.errors, :status => :unprocessable_entity }
        end
      end
    
  end

  # PUT /combat_groups/1
  # PUT /combat_groups/1.xml
  def update
    @combat_group = CombatGroup.find(params[:id])

    respond_to do |format|
      if @combat_group.update_attributes(params[:combat_group])
        flash[:notice] = 'CombatGroup was successfully updated.'
        format.html { redirect_to(@combat_group) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @combat_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /combat_groups/1
  # DELETE /combat_groups/1.xml
  def destroy
    @combat_group = CombatGroup.find(params[:id],:include=>[:army_list])
    if(@combat_group.army_list.user_id!=current_user.id)
      redirect_to(army_list_path(@combat_group.army_list.id))
    end
    @combat_group.combat_group_units.each do |cunit|
      cunit.destroy
    end
    @combat_group.destroy
    
    respond_to do |format|
      format.html { redirect_to(army_list_path(:id=>@combat_group.army_list.id)) }
      format.xml  { head :ok }
    end
  end
end
