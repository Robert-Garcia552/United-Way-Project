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
  post '/sign-up' => 'users#new'
  get '/profile' => 'users#show'
  post '/users/edit' => 'users#edit'

  # WIP
  get '/update' => 'users#update'
  post '/update' => 'users#update'
  patch '/update' => 'users#update'
  get '/users/:id/edit' => 'users#edit'
  post '/sessions/:id/edit' => 'sessions#edit'
  get '/sessions/:id' => 'sessions#show'

  # WIP

  post '/sessions/:id/edit' => 'sessions#show'
  post '/users/new' => 'users#show'
  post '/edit' => 'sessions#edit'
  post '/sessions/edit' => 'sessions#edit'


  # User logs and is taken to their profile. Need to get redirect to go to another controller.
  get '/login' => 'sessions#new'
  post '/profile' => 'sessions#show'
  get '/profile' => 'sessions#show'

end
