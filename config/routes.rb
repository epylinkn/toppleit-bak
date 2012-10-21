Toppleit::Application.routes.draw do
  
  # get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root :to => "posts#index"
  
  resources :posts, :sessions
  
  resources :users, :except => [:new, :create]
  
  namespace :admin do
    resources :posts
  end
  
  get '/admin' => 'admin/posts#index'
end
