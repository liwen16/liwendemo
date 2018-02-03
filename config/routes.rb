Rails.application.routes.draw do
  resources :liwen_samples
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  root 'welcome#index'  
end
