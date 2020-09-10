Rails.application.routes.draw do
  root to: 'top#index'

  resources :users
  resources :menus do
    resources :menu_reviews
  end
  resources :stores
end
