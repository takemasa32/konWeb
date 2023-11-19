Rails.application.routes.draw do
  resources :blogs
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'

  get 'comtents/:id', to: 'home#show', as: 'custom_blog'

  # 認証機能
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#show'
  get '/unsubscribe', to: 'users#confirm_destroy'
  delete '/unsubscribe', to: 'users#destroy'
  #　ログイン系
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
