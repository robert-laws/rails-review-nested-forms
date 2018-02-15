Rails.application.routes.draw do
  resources :stores, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  get "/about", to: "static#about", as: "about"

  get "/home", to: "static#home"

  root "stores#index"
end
