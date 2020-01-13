Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/charge', to: 'pledge#charge'
  post '/users/create', to: 'user#create'
  get '/pledges', to: 'pledge#index'
  get '/projects', to: 'project#index'
  get '/projects/:name', to: 'project#show'
  # To use email as a param, we need to provide constraint to this route
  get '/users/:email', to: 'user#show', constraints: { email: /[^\/]+/} 
end
