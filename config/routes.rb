Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/charge', to: 'pledge#charge'
  post '/users/create', to: 'user#create'
  get '/pledges', to: 'pledge#index'
  get '/projects', to: 'project#index'
  get '/projects/:name', to: 'project#show'
  get '/users/:id', to: 'user#show'
end
