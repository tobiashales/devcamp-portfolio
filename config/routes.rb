Rails.application.routes.draw do
  get 'pages/contact'

  get 'pages/home'

  get 'pages/about'

  get 'pages/contract'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
