Rails.application.routes.draw do

  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root 'dashboard#index'
  get 'welcome', to: 'dashboard#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'

end
