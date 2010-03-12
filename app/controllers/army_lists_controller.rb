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
    @validation = @army_list.validate_army()
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
      
    else
    
     @isMerc = true
    end
     @validation = @army_list.validate_army();
    @myList = false
    if(current_user!=nil and current_user.id==@army_list.user_id)
      @myList=true
    end
    
    if(@myList)
      
      
      if(@army_list.army_id<7)
        @units = Unit.find(:all,:conditions=>['army_id in (?,7)',@army_list.army_id])
      elsif (@army_list.army_id > 7)
        @units = Unit.find(:all,:conditions=>['army_id = ?',@army_list.army_id])
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
  

  ### Validation code for a Mercenary army it is handled differently
  def validate_mercarmy(army)
   
  end
end
