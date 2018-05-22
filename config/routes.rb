Rails.application.routes.draw do
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
  root to: "posts#index"
  get 'new' => 'posts#new', as: 'new'
  get 'home' => 'posts#index', as: 'home'
  resources :posts
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
