class UsersController < ApplicationController

  def current
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
  end
end
