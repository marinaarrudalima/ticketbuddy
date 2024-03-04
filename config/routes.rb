Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :tickets, only: %i[show create new destroy] do
    get "my", on: :collection
    resources :orders, only: :create
  end

  resources :orders, only: %i[index destroy]
  get "up" => "rails/health#show", as: :rails_health_check
end
