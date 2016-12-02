Rails.application.routes.draw do
  devise_for :users
  resources :courses do
    resources :reviews
  end

resources :problems

  get 'home/contact'
  get 'home/help'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
