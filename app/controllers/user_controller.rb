class UserController < ApplicationController
  def show
    user = User.find_by(email: params[:email])
    render json: UserSerializer.new(user).to_serialized_json
  end

  def create
    user = User.create(email: params[:email])
  end
end
