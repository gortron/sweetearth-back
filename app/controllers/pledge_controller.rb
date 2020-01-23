require 'stripe'
Stripe.api_key = ENV["STRIPE_API_KEY_PROD"]

class PledgeController < ApplicationController
  def index
    pledges = Pledge.all
    render json: PledgeSerializer.new(pledges).to_serialized_json
  end

  def charge
    # Testing Stripe API, should incorporate form information from the post invoked in the front-end
    user = User.find_or_create_by(email: params[:user_email])
    project = Project.find_by(name: params[:project_name])
    amount = params[:amount]

    token = params[:stripe_token]
    charge = Stripe::Charge.create({
      amount: amount,
      currency: 'usd',
      description: "Thanks #{user.email} for pledging $#{amount/100} to #{project.name}",
      receipt_email: user.email,
      source: token
    })

    Pledge.create(amount: amount, user_id: user.id, project_id: project.id)
  end
end
