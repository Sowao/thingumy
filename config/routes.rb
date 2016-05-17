Rails.application.routes.draw do
  devise_for :users
  root to: 'static_page#home'

  get '/home' => 'static_page#home'
  get '/about' => 'static_page#about'
  get '/exhibition' => 'static_page#exhibition'

  get 'artwork/:id' => 'artwork#show'

  get 'artists/' => 'artists#index'
  get 'artist/:id' => 'artists#show'

  resources :comments
  resources :likes
end
