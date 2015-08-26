class AdminBoardsController < ApplicationController
  layout "admin"
  before_filter :set_up_shared_instance_variables
  before_action :logged_in?, :require_user
  def index
  end
end


