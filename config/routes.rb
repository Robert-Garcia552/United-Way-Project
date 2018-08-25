Rails.application.routes.draw do
  resource :users, only: [:show, :update]

  resources :events, only: [:index, :create, :destroy]

  root 'home#index'

  get "/pages/:pages" => "pages#show"

  get '/events' => 'events#index'

  get '/user_profile' => 'userprofiles#update'
  get '/user_profile' => 'userprofiles#show'

  # sign up and create users routes
  get '/sign-up' => 'users#new'
  get '/users' => 'users#create'

end
