class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  

  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    if(params[:isinch]=="inches")
      @user.isinch = true
    else
      @user.isinch = false
    end
    success = @user && @user.save
    if success && @user.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      self.current_user = @user # !! now logged in
      redirect_back_or_default('/army_lists')
      flash[:notice] = "Thanks for signing up!  We're sending you an email with your activation code."
    else
      flash[:error]  = "We couldn't set up that account, sorry.  Please try again, or contact an admin (link is above)."
      render :action => 'new'
    end
  end
  # edit your profile
  def edit
    @user = User.find(current_user.id)
    
  end
  
  #update
  def update
     @user = User.find(current_user.id)
    isInch= true;
    if(params[:isinch]=="inches")
      @user.isinch = true
    else
      @user.isinch = false
    end
    respond_to do |format|
        if @user.save
           flash[:notice] = 'Unit was successfully updated.'
           format.html { redirect_back_or_default(user_army_lists_path(@user)) }
           format.xml  { head :ok }
         else
           format.html { render :action => "edit" }
           format.xml  { render :xml => @unit.errors, :status => :unprocessable_entity }
         end
     end
  end
  def show
    @user = User.find(params[:id])
    
  end
end
