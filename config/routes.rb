Rails.application.routes.draw do
  get 'materials/new'

  get 'materials/show'

  devise_for :users
  resources :courses do
    resources :reviews
	resources :materials
  end

devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

resources :user
resources :problems
resources :reviews

  get 'home/contact'
  get 'home/help'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
