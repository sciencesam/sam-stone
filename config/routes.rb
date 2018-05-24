Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  #get 'static_pages/home'
  #get 'static_pages/about'
  #get 'static_pages/projects'
  #get 'static_pages/contact'
  
  #get 'home' => 'static_pages#home', as: 'home'
  #get 'about' => 'static_pages#about', as: 'about'
  #get 'projects' => 'static_pages#projects', as: 'projects'
  #get 'contact' => 'static_pages#contact', as: 'contact'
  
  #root 'static_pages#home'
  
  
  root "posts#index"
  get 'new' => 'posts#new', as: 'new'
  get 'home' => 'posts#index', as: 'home'
  get 'projects' => 'posts#projects', as: 'projects'
  post 'posts/', to: 'posts#create'
  resources :posts
  
  controller :posts do
    #get '/new_post' => :new, as: 'new_post'
    #get '/post/:id' => :show, as: 'show_post'
    post '/create_post' => :create, as: 'create_post'
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
