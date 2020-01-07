Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'oQrrh59Um6IANf9DaDWzzJj2y7v0q328',
    'mPpU_YKr5sHsE8jS2SC4A63kYfVlvausuRlSjTPkkoQhxQXsRPsBTIASx-bTkarE',
    'dev-0s178fke.auth0.com',
    callback_path: '/',
    authorize_params: {
      scope: 'openid email profile'
    }
  )
end