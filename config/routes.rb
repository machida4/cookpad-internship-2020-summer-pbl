Rails.application.routes.draw do
  root to: 'top#index'

  resources :users
  resources :menus do
    resources :menu_reviews
    member do
      get :confirm
      post :order
    end
  end
  resources :stores
  resources :user_purchase_histories
end
