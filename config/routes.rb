Rails.application.routes.draw do
  resources :posts
  resources :authors
  resources :tags

  namespace :admin do
    resources :posts
    resources :authors
    resources :tags
  end
end
