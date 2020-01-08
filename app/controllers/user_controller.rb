class UserController < ApplicationController
  def show
    user = User.find_by(id: params[:id])
    options = {include: [:pledges, :projects]}
    render json: UserSerializer.new(user, options)
  end
end
