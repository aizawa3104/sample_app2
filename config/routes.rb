Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post  '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/carshare', to: 'static_pages#carshare'
  # カレンダーで管理する予約情報ルーティング
  get '/rlist',   to: 'events#rlist'
  get '/rmanage',   to: 'events#rmanage'
  resources :users
  resources :cars, only: [:show, :new, :edit, :create, :update, :destroy]
  resources :events
end