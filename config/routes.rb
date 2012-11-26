Toppleit::Application.routes.draw do

  root :to => "posts#index"
  
  resources :posts
  
  namespace :admin do
    resources :posts
  end
  
  
  match '/about' => 'pages#about'
  
  get '/admin' => 'admin/posts#index'
end
