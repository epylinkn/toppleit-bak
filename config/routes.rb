Toppleit::Application.routes.draw do
<<<<<<< HEAD
=======
  
  # get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
>>>>>>> 90b9d3c39a8ee5ae01cac9506e1f43e64e8e69b4

  root :to => "posts#index"
  
  resources :posts, :sessions
  
  resources :users, :except => [:new, :create]
  
  namespace :admin do
    resources :posts
  end
  
  
  match '/about' => 'pages#about'
  
  get '/admin' => 'admin/posts#index'
end
