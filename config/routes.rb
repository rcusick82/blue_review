Rails.application.routes.draw do
  get '', to: 'posts#index'
  resources :posts
  resources :authors
  resources :tags

  namespace :admin do
    resources :posts
    resources :authors
    resources :tags
  end
end
