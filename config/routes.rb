Rails.application.routes.draw do
  devise_for :users
  root to: "medications#index"
  resources :medications, only: [:index, :show, :edit, :update, :destroy, :create, :new]
  resources :intakes, only: [:index]
  get "calendar", to: "intakes#calendar"
  get "month-calendar", to: "intakes#month_calendar"
  end

