Rails.application.routes.draw do
  #legacy
  get '/dev',   to: redirect("/course")
  get '/web',   to: redirect("/course")
  get '/method',  to: redirect("/course")
  get '/teachers',to: redirect("/course#teachers")
  get '/sponsoring',to: redirect("/sponsor_diversity")

  namespace :admin do
    resources :users
    resources :courses
    resources :resumes
    resources :applies

    root to: "users#index"
  end

  devise_for :users, controllers: { registrations: "registrations" }

  resource  :resume , except: [:destroy , :new , :edit] do
    get :progress, on: :member
  end
  get :application , to: "applies#show"
  post :application , to: "applies#create"
  post :cancel_application , to: "applies#cancel"


  root to: 'high_voltage/pages#show' , id: 'index'

  get "/blog" , to: "blog#index" , as: :blog_index
  get "/blog/*slug" , to: "blog#page" , as: :blog_page
end
