Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :medications, only: [:index, :show, :edit, :update, :destroy, :create, :new]
  resources :intakes, only: [:index, :update]
  get "calendar", to: "intakes#calendar"
  get "home", to: "pages#home"
  get "month-calendar", to: "intakes#month_calendar"
end
