Rails.application.routes.draw do
  #legacy
  get '/dev',   to: redirect("/course")
  get '/web',   to: redirect("/course")
  get '/method',  to: redirect("/course")
  get '/teachers',to: redirect("/course#teachers")

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
