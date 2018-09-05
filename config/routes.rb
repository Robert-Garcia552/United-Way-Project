Rails.application.routes.draw do
  default_url_options :host => "localhost:3000"
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

  # get '/pages/:page' => 'pages#show'
  get '/pages/about' => 'pages#about_us'
  get '/pages/partners' => 'pages#partners'
  get '/pages/waystogive' => 'pages#ways_to_give'

end
