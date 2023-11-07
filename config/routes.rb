Rails.application.routes.draw do
  resources :blogs
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'

  get ':id', to: 'home#show', as: 'custom_blog'
end
