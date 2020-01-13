class UserController < ApplicationController
  def show
    user = User.find_by(email: params[:email])
    options = {include: [:pledges, :projects]}
    render json: UserSerializer.new(user, options)
  end

  def create
    user = User.create(email: params[:email])
  end
end
