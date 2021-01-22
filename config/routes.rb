Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get "/about" => "home#about"
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
end
