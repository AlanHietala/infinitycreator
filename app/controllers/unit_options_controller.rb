class UnitOptionsController < ApplicationController
  # GET /unit_options
  # GET /unit_options.xml
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

  # # GET /unit_options/new
  # # GET /unit_options/new.xml
  # def new
  #   @unit_options = UnitOptions.new
  # 
  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.xml  { render :xml => @unit_options }
  #   end
  # end
  # 
  # # GET /unit_options/1/edit
  # def edit
  #   @unit_options = UnitOption.find(params[:id])
  # end
  # 
  # # POST /unit_options
  # # POST /unit_options.xml
  # def create
  #   @unit_options = UnitOption.new(params[:unit_options])
  # 
  #   respond_to do |format|
  #     if @unit_options.save
  #       flash[:notice] = 'UnitOptions was successfully created.'
  #       format.html { redirect_to(@unit_options) }
  #       format.xml  { render :xml => @unit_options, :status => :created, :location => @unit_options }
  #     else
  #       format.html { render :action => "new" }
  #       format.xml  { render :xml => @unit_options.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # PUT /unit_options/1
  # # PUT /unit_options/1.xml
  # def update
  #   @unit_options = UnitOption.find(params[:id])
  # 
  #   respond_to do |format|
  #     if @unit_options.update_attributes(params[:unit_options])
  #       flash[:notice] = 'UnitOptions was successfully updated.'
  #       format.html { redirect_to(@unit_options) }
  #       format.xml  { head :ok }
  #     else
  #       format.html { render :action => "edit" }
  #       format.xml  { render :xml => @unit_options.errors, :status => :unprocessable_entity }
  #     end
  #   end
  # end
  # 
  # # DELETE /unit_options/1
  # # DELETE /unit_options/1.xml
  # def destroy
  #   @unit_options = UnitOption.find(params[:id])
  #   @unit_options.destroy
  # 
  #   respond_to do |format|
  #     format.html { redirect_to(unit_options_url) }
  #     format.xml  { head :ok }
  #   end
  # end
end
