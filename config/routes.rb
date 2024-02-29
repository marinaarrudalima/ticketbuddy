Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :tickets, only: %i[index show create new destroy]
  get "up" => "rails/health#show", as: :rails_health_check
end
