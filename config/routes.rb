Rails.application.routes.draw do
  # devise_for :users
  # devise_for :models
  get '', to: 'posts#index'
  resources :posts
  resources :authors
  resources :tags
  root to: "home#index"

  namespace :admin do
    resources :posts
    resources :authors
    resources :tags
  end
end
