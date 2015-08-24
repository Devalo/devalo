class StaticPagesController < ApplicationController
 

  def index
    @subscribe = Subscribe.new
  end


end
