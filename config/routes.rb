Rails.application.routes.draw do
  resource :sessions
  resources :users
  resources :events, only: [:index, :create, :destroy]
  resources :user_profile, only: [:show, :update]

  root 'home#index'

  get '/events' => 'events#index'
  get "/pages/:pages" => "pages#show"

  # Go here to sign-up directly. Second takes them to profile.
  get '/sign-up' => 'users#new'
  post '/sign-up' => 'users#new'
  get '/profile' => 'users#show'
  post '/users/edit' => 'users#edit'

  # WIP
  get '/update' => 'users#update'
  post '/update' => 'users#update'
  patch '/update' => 'users#update'
  post '/users/:id/edit' => 'users#show'

  # User logs and is taken to their profile. Need to get redirect to go to another controller.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#new'
  get '/profile' => 'sessions#show'

end
