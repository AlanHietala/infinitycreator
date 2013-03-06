class FavouritesController < ApplicationController
  # GET /favourites
  # GET /favourites.xml
  layout "application"
  def index
    @favourites = Favourite.find(:all,:conditions=>["user_id = ?",current_user.id],:include=>[:army_list])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @favourites }
    end
  end

  # GET /favourites/1
  # GET /favourites/1.xml
  def show
    @favourites = Favourite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @favourites }
    end
  end

  # GET /favourites/new
  # GET /favourites/new.xml
  def new
    @favourites = Favourites.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @favourites }
    end
  end

  # GET /favourites/1/edit
  def edit
    @favourites = Favourite.find(params[:id])
  end

  # POST /favourites
  # POST /favourites.xml
  def create
    @favourites = Favourite.new()
    @favourites.user_id = current_user.id;
    @favourites.army_list_id = params[:favourite][:army_list_id]
    
    respond_to do |format|
      if @favourites.save
        flash[:notice] = 'Favourites was successfully created.'
        format.html { redirect_back_or_default(user_favourites_url(current_user)) }
        format.xml  { render :xml => @favourites, :status => :created, :location => @favourites }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @favourites.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /favourites/1
  # PUT /favourites/1.xml
  def update
    @favourites = Favourite.find(params[:id])

    respond_to do |format|
      if @favourites.update_attributes(params[:favourites])
        flash[:notice] = 'Favourites was successfully updated.'
        format.html { redirect_to(@favourites) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @favourites.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /favourites/1
  # DELETE /favourites/1.xml
  def destroy
    @favourites = Favourite.find(params[:id])
    @favourites.destroy

    respond_to do |format|
      format.html { redirect_to(favourites_url) }
      format.xml  { head :ok }
    end
  end
end
