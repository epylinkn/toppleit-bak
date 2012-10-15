Toppleit::Application.routes.draw do
  root :to => "posts#index"
  
  resources :posts
  
  namespace :admin do
    resources :posts
  end
  
  get '/admin' => 'admin/posts#index'
end
