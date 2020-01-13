class UserController < ApplicationController
  def show
    user = User.find_by(email: params[:email])
    options = {include: [:pledges]}
    render json: UserSerializer.new(user, options)
        # render json: user.to_json(
        #   include: [
        #     pledges: {except: :updated_at},
        #     projects: {only: [:name, :description, :category, :imgUrl, :siteUrl]}
        #   ], except: [:updated_at]
        # )
  end

  def create
    user = User.create(email: params[:email])
  end
end
