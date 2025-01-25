Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/index" => "home#index", as: :home
  get "/calculate/add" => 'calculator#add', as: :calculator_add

  get "/login" => "form#get_login", as: :get_login
  post "/login" => "form#post_login", as: :post_login

  get "/add" => "form#get_add"
  get "/result" => "form#get_add_result"

  get "/add/:first/:second" => "form#get_add_result"
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
