Rails.application.routes.draw do
    
  get 'home/index'
  resources :user_question_ans
  resources :question_choices
  resources :questions
  get 'admin/index'
  root 'admin#index' 
  
  get '/home/assignment/:id', to: 'home#assignment'
  get '/home/result'
  
  resources :assignments
  resources :subjects
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
