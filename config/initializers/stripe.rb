
if Rails.env.production?
  Rails.configuration.stripe = {
      publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
      secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
      publishable_key: 'pk_test_08UmNKhc9FPvujii2S6RF2vc',
      secret_key: 'sk_test_hKau6e6VzlQIojrse1gNEqVp'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]