Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :tasks
  end
  
  root to: "home#index"
  
  post '/categories' => 'categories#create', as: 'create_category'
  
  # get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
