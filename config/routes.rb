Toppleit::Application.routes.draw do

  root :to => "posts#index"
  
  resources :posts, :sessions
  
  resources :users, :except => [:new, :create]
  
  namespace :admin do
    resources :posts
  end
  
  match '/about' => 'pages#about'
  # match '/signup', to: 'users#new'
  match '/login', to: 'sessions#new'
  match '/logout', to: 'sessions#destroy'
  
  match '/admin' => 'admin/posts#index'
    
end
