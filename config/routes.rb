Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  
  resource :sessions, only: [:new, :create, :destroy]
  resources :users, except: [:index, :destroy]
  resources :events, only: [:index, :create, :destroy] do
    resource :rsvps, only: [:create, :destroy]
  end

  root 'home#index'

  get '/pages/:page' => 'pages#show'

end