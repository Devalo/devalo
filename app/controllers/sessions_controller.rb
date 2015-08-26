class SessionsController < ApplicationController

  def new
    set_up_shared_instance_variables
    if :require_user 
      flash[:alert] = "Du er allerede logget inn."
      redirect_to root_path
    end

  end


  def create
    set_up_shared_instance_variables
    user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:success] = "Thanks for logging in"
        redirect_to root_path 
      else
        flash[:error] = "username/password incorrect. Please try again."
        render action: 'new'
    end
  end


  def destroy
    session[:user_id] = nil
    
    redirect_to root_path
  end
end
