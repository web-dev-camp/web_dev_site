Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :courses
    resources :resumes
    resources :applies

    root to: "users#index"
  end

  devise_for :users, controllers: { registrations: "registrations" }

  resources :profile ,  except: [:index , :new ]
  resource  :resume , except: [:destroy , :new , :edit]
  get :application , to: "applies#show"
  post :application , to: "applies#create"
  post :cancel_application , to: "applies#cancel"


  root to: 'high_voltage/pages#show' , id: 'index'
end
