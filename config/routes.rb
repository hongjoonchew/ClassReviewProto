Rails.application.routes.draw do

  devise_for :users
  
  get 'home/about'

  get 'home/home'

  get 'home/index'

  get 'home/help'

  #route to homepage
  root 'reviews#index'
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
