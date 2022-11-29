Rails.application.routes.draw do
  devise_for :users
  root to: "medications#index"
  resources :medications, only: [:index, :show, :edit, :update, :destroy]
end
