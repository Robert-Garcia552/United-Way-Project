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
  # For users logged in.
  get '/profile/:id' => 'user_profiles#show'
  post '/profile' => 'user_profiles#update'

  post '/sessions/new' => 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end