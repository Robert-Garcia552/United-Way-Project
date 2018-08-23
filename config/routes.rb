Rails.application.routes.draw do
  root 'home#index'

  get 'home/index' => 'home#index'
  get 'user' => 'user#index'
  get 'user/create' => 'user#create' 
  post 'user/create' => 'user#create' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
