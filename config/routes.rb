Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'pages/about'
  get 'pages/partners'
  get 'pages/search'
  get 'pages/results'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
