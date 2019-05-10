Rails.application.routes.draw do
  get 'comments/new'
  devise_for :users

  root 'welcome#index'
  resources :posts do
    get 'likes' 
    get 'unlike' 
  end
  resources :comments do
  	get 'likes' 
    get 'unlike' 
  end
  
  resources :roles 
  resources :colleges do
    post 'search',  :on => :collection
  end
  resources :students
  resources :marksheets
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
