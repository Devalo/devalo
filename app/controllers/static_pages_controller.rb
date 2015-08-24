class StaticPagesController < ApplicationController
 

  def index
    set_up_shared_instance_variables
  end





 private

  def set_up_shared_instance_variables
    @subscribe = Subscribe.new 
  end
end
