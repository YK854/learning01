Rails.application.routes.draw do
  root to: 'homes#top'
  resources :books
  resources :books2
  resources :books3
  #devise_for :users
end
