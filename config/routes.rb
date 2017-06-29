Rails.application.routes.draw do
  resources :portfolios
  
  
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'contract', to:'pages#contract'

  resources :blogs
 
 root to: 'pages#home'
end
