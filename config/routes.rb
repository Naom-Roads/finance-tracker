Rails.application.routes.draw do

  resources :user_friends
 resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root 'dashboard#index'
  get 'welcome', to: 'dashboard#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'user_friends', to: 'user_friends#index'
  get 'friend_portfolio', to: 'user_friends#friend_portfolio'

 

end
