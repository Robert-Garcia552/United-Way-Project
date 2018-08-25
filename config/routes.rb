Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :events, only: [:index, :create, :destroy]
  resources :user_profile, only: [:show, :update]

  root 'home#index'

  get '/events' => 'events#index'
  get "/pages/:pages" => "pages#show"


  get '/profile' => 'user_profiles#show'
  post '/profile' => 'user_profiles#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end