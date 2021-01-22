Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get "/about" => "home#about"
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :books, only: [:new, :index, :show, :edit, :update, :destroy]
end
