Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/projects'
  get 'static_pages/contact'
  
  get 'home' => 'static_pages#home', as: 'home'
  get 'about' => 'static_pages#about', as: 'about'
  get 'projects' => 'static_pages#projects', as: 'projects'
  get 'contact' => 'static_pages#contact', as: 'contact'
  
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
