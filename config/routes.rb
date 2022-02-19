Rails.application.routes.draw do
  # devise_for :users

  resources :categories do
    resources :tasks
  end

  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions",
    confirmations: "users/confirmations"
  }

  devise_scope :user do
    post 'users/sign_up', to: 'devise/registrations#create'
  end
  
  root to: "home#index"
  
  post '/categories' => 'categories#create', as: 'create_category'
  post '/categories/:category_id/tasks' => 'tasks#create', as: 'create_task'

  delete '/categories/:category_id/tasks/:id' => 'tasks#destroy', as: 'delete_task'
  # get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
