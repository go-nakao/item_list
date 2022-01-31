Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end

  root to: 'items#index'
  resources :items, only: [:index, :new, :create, :destroy, :edit, :show, :update]
end
