Rails.application.routes.draw do
    
  root 'subjects#index'    
  
  resources :assignments
  resources :subjects
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
