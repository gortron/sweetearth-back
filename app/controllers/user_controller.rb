class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    render :json => @user, :include => :pledges
  end
end
