Rails.application.routes.draw do
  devise_for :users
  
  get 'user/index'
  get 'welcome/index'
  root 'welcome#index'

  resources :tests
  resources :chapters
end
