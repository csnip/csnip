class UsersController < ApplicationController

  def authorized?(action = action_name, resource = nil)
    User.count == 0 || (logged_in? && current_user.admin?)
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
    unless @user
      redirect_to users_path
    end
  end

  # render new.rhtml
  def new
    @user = User.new
  end

  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
      # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      # self.current_user = @user # !! now logged in
      redirect_back_or_default('/')
      flash[:notice] = "New user created"
    else
      flash[:error]  = "We couldn't set up that account, sorry.  Please try again."
      render :action => 'new'
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    if @user.nil?
      flash[:error] = 'No user found'
      redirect_to :action => 'index'
      return
    end

    if @user.destroy
      redirect_to users_path
    else
      render :action => 'show'
    end
  end
end
