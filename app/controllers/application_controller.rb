class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper


   def set_up_shared_instance_variables
    @subscribe = Subscribe.new  
  end

    def require_user
    if current_user
      true
    else
      redirect_to login_path, notice: "Du må være innlogget for å se denne siden."
    end
  end
end
