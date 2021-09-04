Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
   root to: 'pages#home'

  get "desktop", to: "pages#desktop_landing_page"

  resources :pages, only: [:index]
  get "qrcode", to: "pages#qrcode"
  resources :qr_codes, only: [:new, :create, :show, :find]

  post 'geolocation/location', to: "geolocation#location"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :stores, only: [:index, :show] do
    resources :orders, only: [:create]
    end

  resource :orders, only: [:show] do
    resources :payments, only: [:new]
  end

  resources :products, only: [:show] do
    resources :order_items, only: [:create]
  end

  resources :order_items, only: [:index, :destroy] #question?  resources :sessions, only: [:show] (nested?)

  resources :orders, only: [ :edit, :update, :destroy]

mount StripeEvent::Engine, at: '/stripe-webhooks'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
