Rails.application.routes.draw do
  resources :sessions
  resource :users
  resources :events, only: [:index, :create, :destroy]
  resources :user_profile, only: [:show, :update]

  root 'home#index'

  get '/events' => 'events#index'
  get "/pages/:pages" => "pages#show"

  # Go here to sign-up directly.
  get '/sign-up' => 'users#new'

  get '/profile' => 'users#show'  
  post '/sessions/new' => 'sessions#new'

end