Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :tickets, only: %i[index show create new edit update destroy] do  
    resources :orders, only: %i[index create]
  end

  resources :orders, only: %i[index destroy]
  get "up" => "rails/health#show", as: :rails_health_check
end
