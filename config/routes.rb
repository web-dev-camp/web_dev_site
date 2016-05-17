Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :courses
    resources :resumes

    root to: "users#index"
  end

  devise_for :users, controllers: { registrations: "registrations" }

  resources :users ,  except: [:index , :new ]
  resource  :resume , except: [:destroy , :new , :edit]


  root to: 'high_voltage/pages#show' , id: 'index'
end
