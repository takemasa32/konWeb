Rails.application.routes.draw do
  resources :blogs
  
  get "top" => "home#top"
  get "sns" => "home#sns"
  get 'posts' => 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#top'

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
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
end
