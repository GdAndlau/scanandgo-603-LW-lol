Rails.application.routes.draw do
  devise_for :users
   root to: 'pages#home'

   resources :pages, only: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :stores, only: [:index, :show] do
    resources :orders, only: [:create]
  end

  resources :products, only: [:show] do
    resources :order_items, only: [:create]
  end

  resources :order_items, only: [:index, :destroy] #question?  resources :sessions, only: [:show] (nested?)

  resources :orders, only: [:show, :edit, :update, :destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
