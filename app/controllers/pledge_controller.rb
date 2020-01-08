class PledgeController < ApplicationController
  def index
    pledges = Pledge.all
    options = {include: [:user]}
    render json: PledgeSerializer.new(pledges, options)
  end

  def post
    # Testing Stripe API, should incorporate form information from the post invoked in the front-end
    Stripe.api_key = 'sk_test_esxJZSjnusctpXvR7GslOxGC00pg3FbOWf'

    Stripe::PaymentIntent.create({
      amount: 1000,
      currency: 'gbp',
      payment_method_types: ['card'],
      receipt_email: 'jenny.rosen@example.com',
    })
  end
end
