require 'stripe'
Stripe.api_key = ENV["STRIPE_API_KEY"]

class PledgeController < ApplicationController
  def index
    pledges = Pledge.all
    options = {include: [:user]}
    render json: PledgeSerializer.new(pledges, options)
  end

  def charge
    # Testing Stripe API, should incorporate form information from the post invoked in the front-end
    byebug
    token = params[:_json]
    charge = Stripe::Charge.create({
      amount: 1000,
      currency: 'usd',
      description: 'Charge for jenny.rosen@example.com',
      receipt_email: 'jenny.rosen@example.com',
      source: token
    })
  end
end
