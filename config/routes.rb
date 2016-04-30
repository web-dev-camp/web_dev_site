Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  resources :users
  resource  :resume , except: [:destroy , :new , :edit]

  namespace :admin do
    resources :users
    resources :resumes , except: [:destroy , :new , :edit ]
    root to: "users#index"
  end

  root to: 'high_voltage/pages#show' , id: 'index'
end
