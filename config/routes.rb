Rails.application.routes.draw do
  resources :comments
  resources :event_listings
  # resources :events
  
  ##################USER############
  get '/profile/:id', to: 'users#profile'
  get '/events', to: 'events#index'
  get '/events/:id', to: 'events#show'

  post '/login', to: 'users#login'
  post '/event_listings', to: 'event_listings#create'
  
  
  post '/users/:id/events', to: 'event_listings#create'

  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
