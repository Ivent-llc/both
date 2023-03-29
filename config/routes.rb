Rails.application.routes.draw do
  root 'static_pages#home'
  get '/post', to: 'posts#new'
  get '/confirm', to: 'posts#index'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'sessions#destroy'
  resources :posts
  resources :users
end
