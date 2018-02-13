Rails.application.routes.draw do
  #get 'pages/about'

  #get 'pages/contact'

  #get 'pages/resources'

  #match 'about', to: 'pages#about',via: [:get, :post]
  #match 'contact', to: 'pages#contact',via: [:get, :post]
  #match 'resources', to: 'pages#resources',via: [:get, :post]
  #resources :categories
  #resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get 'welcome/index'
  #root 'welcome#index'
  #get'/index'
  root 'home#index'
end
