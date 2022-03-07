Rails.application.routes.draw do
  root to: 'homes#top'
  resources :books
  devise_for :users
end
