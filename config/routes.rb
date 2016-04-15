Rails.application.routes.draw do
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'high_voltage/pages#show' , id: 'index'
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users
end
