Rails.application.routes.draw do
  devise_for :users
  root to: "medications#index"
  resources :medications, only: [:index, :show, :edit, :update, :destroy, :create, :new]
  # verb "url", to: "controller_name#action", as: :prefix (prefix_path)
  get "calendar", to: "intakes#calendar"
  get "month-calendar", to: "intakes#month_calendar"
  get "home_page", to: "medications#home_page"
end
