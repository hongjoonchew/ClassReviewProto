Rails.application.routes.draw do

  get 'reviews/reviewlist'

  get 'courses/courselist'
  
  get 'syllabus/syllabus'

  devise_for :users

  get 'home/about'

  get 'home/home'

  get 'home/index'

  get 'home/help'

  #route to homepage
  root 'home#index'
  resources :courses do
	resources :reviews
  end
  
  resources :reviews
  
  resources :reviews do
	resources :courses
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
