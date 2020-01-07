Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/payment', to: 'pledge#post'
  get '/pledges', to: 'pledge#index'
  get '/projects', to: 'project#index'
  get '/users/:id', to: 'user#show'
end
