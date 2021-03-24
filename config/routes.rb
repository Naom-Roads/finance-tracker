Rails.application.routes.draw do

 resources :user_friends
 resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root 'dashboard#index'
  get 'welcome', to: 'dashboard#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'user_friends', to: 'user_friends#index'
  #get 'friends_portfolio', to: 'user_friends#friend_portfolio' 

  get 'friends/:id/portfolio', to: 'user_friends#friend_portfolio', as: 'friend_portfolio'


  # Route structure : 
  # verb (get | post | put | patch | delete)
  # name of route : 
  #   |  / (absolute path), no / (relative path)
  #   |  names can be composed name : my-friends
  #   |  or can have params : friends/:id  :id is accessible im params[:id]
  # to : controllerName#method
  # as : pathName (alias)

end
