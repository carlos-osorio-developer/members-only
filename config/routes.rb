Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :users, only: [:show, :index, :destroy]
  get '/users/new', to: 'devise/registrations#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'posts#index'
end
