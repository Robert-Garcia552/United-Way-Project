Rails.application.routes.draw do
  devise_for :users

  resource :user_profile, only: [:show, :update]

  resources :events, only: [:index, :create, :destroy]

  root 'home#index'

  get "/pages/:pages" => "pages#show"

  get '/events' => 'events#index'

  get '/profile' => 'user_profiles#show'
  post '/profile' => 'user_profiles#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
