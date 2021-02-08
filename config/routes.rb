Rails.application.routes.draw do
  
  root 'dashboard#index'
  get 'welcome', to: 'dashboard#index'

end
