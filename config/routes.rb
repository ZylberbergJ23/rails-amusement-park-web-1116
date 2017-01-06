Rails.application.routes.draw do


  resources :attractions

  get '/', to: 'users#root', as: 'root'

  get '/users/new', to: 'users#new', as: 'signup' 
  post '/users', to: 'users#create', as: 'users'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/signin', to: 'sessions#new', as: 'sign_in'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy', as: 'logout'

  post '/attraction/:id', to: 'attractions#ride', as: 'ride'

end