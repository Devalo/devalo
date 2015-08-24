class SubscribesController < ApplicationController

  def new 
    @subscribe = Subscribe.new
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
end
