Rails.application.routes.draw do
  root to: 'top#index'

  resources :users
  resources :menus
  resource :stores
  resource :menu_reviews
end
