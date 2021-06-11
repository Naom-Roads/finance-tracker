Rails.application.routes.draw do

  default_url_options :host => "localhost:3000"

 resources :friends 
 resources :friendships, only: [:create, :destroy]
 resources :users, only: [:show]
 resources :dashboard, only: [:index]
 resources :user_stocks, only: [:create, :destroy]
 devise_for :users, controllers: { 
   confirmations: 'confirmations'
 }

  root 'dashboard#index'
  get 'index', to: 'dashboard#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'search_friend', to: 'users#search'
  get 'my_friends', to: 'users#my_friends'
  # post 'friend', to: 'users#friends'
  #get 'friends_portfolio', to: 'user_friends#friend_portfolio' 

  get 'my_friends/:id/portfolio', to: 'users#friend_portfolio', as: 'friend_portfolio'
 
  

  # Route structure : 
  # verb (get | post | put | patch | delete)
  # name of route : 
  #   |  / (absolute path), no / (relative path)
  #   |  names can be composed name : my-friends
  #   |  or can have params : friends/:id  :id is accessible im params[:id]
  # to : controllerName#method
  # as : pathName (alias)

end
