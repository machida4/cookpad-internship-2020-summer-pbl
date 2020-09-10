Rails.application.routes.draw do
  root to: 'top#index'

  resources :users
  resource :stores
  resources :menus do
    resource :menu_reviews
  end
end
