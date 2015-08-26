class SubscribesController < ApplicationController
  layout "admin"
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :set_up_shared_instance_variables
  before_action :logged_in?
  before_action :require_user, only: [:index, :edit, :destroy]
  

  def new 
    @subscribe = Subscribe.new
  end

  def index
    @subscribes = Subscribe.all
  end


  def create 
    @subscribe = Subscribe.new(subscribe_params)
    if @subscribe.save
      flash[:info] = "Takk"
      redirect_to root_url
    else
      flash[:error] = "Noe gikk galt, prøv igjen"
      redirect_to root_url
    end
  end





  private 

  def subscribe_params
    params.require(:subscribe).permit(:email)
  end

  def set_user
      @user = User.find(params[:id])
    end
end
