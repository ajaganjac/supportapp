class UsersController < ApplicationController
  def index
  end
  
  def show
  @user = User.find_by_location(params[:id])
  end
end
