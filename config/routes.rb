Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :events, only: [:index, :create, :destroy]
  resources :user_profile, only: [:show, :update]

  root 'home#index'

  get '/events' => 'events#index'
  get "/pages/:pages" => "pages#show"

  # Go here to sign-up directly. Second takes them to profile.
  get '/sign-up' => 'users#new'
  get '/profile' => 'users#show'
  post '/users/edit' => 'users#edit'
  get '/update' => 'users#update'
  post '/update' => 'users#update'

  # User logs and is taken to their profile.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#new'
  get '/profile' => 'sessions#show'

end