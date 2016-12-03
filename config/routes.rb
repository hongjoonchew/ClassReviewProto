Rails.application.routes.draw do
  devise_for :users
  resources :courses do
    resources :reviews
  end

resources :users
resources :problems

devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

  get 'home/contact'
  get 'home/help'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
