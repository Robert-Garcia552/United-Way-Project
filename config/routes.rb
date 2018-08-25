Rails.application.routes.draw do
  devise_for :users

  resource :user_profile, only: [:show, :update]

  resources :events, only: [:index, :create, :destroy]

  root 'home#index'

  get "/pages/:pages" => "pages#show"

  get '/events' => 'events#index'

  get '/user_profile' => 'userprofiles#update'
  get '/user_profile' => 'userprofiles#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
