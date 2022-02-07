Rails.application.routes.draw do

  #ログイン・ログアウト関連
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    resources :users
  end

  root to: 'items#index'
  resources :items, only: [:index, :new, :create, :destroy, :edit, :show, :update]
end
