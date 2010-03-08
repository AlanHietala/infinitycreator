class UnitsController < ApplicationController
  # GET /units
  # GET /units.xml
  before_filter :login_required
  before_filter :admin_required
  layout "application"
  def index
    @units = Unit.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @units }
    end
  end

  # GET /units/1
  # GET /units/1.xml
  def show
    @unit = Unit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unit }
    end
  end

  # GET /units/new
    # GET /units/new.xml
    def new
      @unit = Unit.new
      @army = Army.find(params[:army_id])
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @unit }
      end
    end
    def copy
      @units = Unit.all
      @firstunit = @units[0]
    end
    
    def copysave
      copyUnit = Unit.find(params[:unit][:id])
      newUnit = copyUnit.clone()
      newUnit.army_id = params[:army_id]
      newUnit.save()
      copyUnit.unit_options.each do |uoption|
        newUnitOption = uoption.clone()
        newUnitOption.unit_id = newUnit.id
        newUnitOption.save()
        uoption.unit_option_weapons.each do |uoptweapon|
          newuoptweapon = uoptweapon.clone()
          newuoptweapon.unit_option_id = newUnitOption.id
          newuoptweapon.save
        end
        
       
      end
      redirect_to(admin_army_path(params[:army_id]))
    end
    # GET /units/1/edit
    def edit
      @unit = Unit.find(params[:id])
    end
    
    # POST /units
    # POST /units.xml
    def create
      @unit = Unit.new(params[:unit])
      @unit.army_id = params[:army_id]
      respond_to do |format|
        if @unit.save
          flash[:notice] = 'Unit was successfully created.'
          format.html { redirect_to(admin_army_unit_path(@unit.army,@unit)) }
          format.xml  { render :xml => @unit, :status => :created, :location => @unit }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @unit.errors, :status => :unprocessable_entity }
        end
      end
    end
    
    # PUT /units/1
    # PUT /units/1.xml
    def update
      @unit = Unit.find(params[:id])
    
      respond_to do |format|
        if @unit.update_attributes(params[:unit])
          flash[:notice] = 'Unit was successfully updated.'
          format.html { redirect_to(admin_army_unit_path(@unit.army,@unit)) }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @unit.errors, :status => :unprocessable_entity }
        end
      end
    end
    
    # DELETE /units/1
    # DELETE /units/1.xml
    def destroy
      @unit = Unit.find(params[:id])
      @unit.unit_options.each do |uopt|
        @uopt.unit_option_weapons.each do |uoptweapons|
          uoptweapons.destroy
        end
        uopt.destroy
      end
      @unit.destroy
    
      respond_to do |format|
        format.html { redirect_to(admin_army_path(@unit.army)) }
        format.xml  { head :ok }
      end
    end
end
