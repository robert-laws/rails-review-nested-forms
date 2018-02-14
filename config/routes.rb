Rails.application.routes.draw do
  resources :stores, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  root "stores#index"
end
