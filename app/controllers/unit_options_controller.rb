class UnitOptionsController < ApplicationController
  # GET /unit_options
  # GET /unit_options.xml
  layout "application"
  before_filter :login_required
  before_filter :admin_required,:except => [:show]
  def index
    @unit_options = UnitOption.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unit_options }
    end
  end

  # GET /unit_options/1
  # GET /unit_options/1.xml
  def show
    @unit_options = UnitOption.find(params[:id],:include=>[:unit,:bsweapons,:ccweapons])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unit_options }
    end
  end

  # GET /unit_options/new
    # GET /unit_options/new.xml
    def new
      @unit_options = UnitOption.new
      
      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @unit_options }
      end
    end
    
  # GET /unit_options/1/edit
    def edit
      @unit_options = UnitOption.find(params[:id])
      @unit_option_weapons = UnitOptionWeapon.new
    end
  # 
  # POST /unit_options
    # POST /unit_options.xml
    def create
      @unit_options = UnitOption.new(params[:unit_option])
      @unit_options.unit_id = params[:unit_id]
      respond_to do |format|
        if @unit_options.save
          flash[:notice] = 'UnitOptions was successfully created.'
          format.html { redirect_to(edit_admin_army_unit_unit_option_path(@unit_options.unit.army,@unit_options.unit,@unit_options)) }
          format.xml  { render :xml => @unit_options, :status => :created, :location => @unit_options }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @unit_options.errors, :status => :unprocessable_entity }
        end
      end
    end
  # 
    # PUT /unit_options/1
      # PUT /unit_options/1.xml
      def update
        @unit_options = UnitOption.find(params[:id])
      
        respond_to do |format|
          if @unit_options.update_attributes(params[:unit_option])
            flash[:notice] = 'UnitOptions was successfully updated.'
            format.html { redirect_to(edit_admin_army_unit_unit_option_path(@unit_options.unit.army,@unit_options.unit,@unit_options)) }
            format.xml  { head :ok }
          else
            format.html { render :action => "edit" }
            format.xml  { render :xml => @unit_options.errors, :status => :unprocessable_entity }
          end
        end
      end
  # 
  # DELETE /unit_options/1
    # DELETE /unit_options/1.xml
    def destroy
      @unit_options = UnitOption.find(params[:id])
      @unit_options.unit_option_weapons.each do |w|
        w.destroy
      end
      @unit_options.destroy
    
      respond_to do |format|
        format.html { redirect_to(admin_army_unit_path(@unit_options.unit.army,@unit_options.unit)) }
        format.xml  { head :ok }
      end
    end
end
