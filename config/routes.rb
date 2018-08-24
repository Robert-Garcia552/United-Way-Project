Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  resource :user_profile, only: [:show, :update]

=======
>>>>>>> e98e7f85db3ecdccbc94d106165e61b1f6c5821b
  resources :events, only: [:index, :create, :destroy]

  root 'home#index'

  get '/events' => 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
