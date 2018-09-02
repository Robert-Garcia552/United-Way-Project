Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  
  resource :sessions, only: [:new, :create, :destroy]
  resources :users, except: [:index, :destroy]
  resources :events do
    resource :rsvps, only: [:create, :destroy]
  end
  resources :password_resets, only: [:new, :create, :edit, :update]


  root 'home#index'

  get '/pages/:page' => 'pages#show'

end