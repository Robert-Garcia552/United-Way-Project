Rails.application.routes.draw do
  devise_for :users
  resource :user_profile, only: [:show, :update]


  root 'home#index'

  get 'home/index' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
