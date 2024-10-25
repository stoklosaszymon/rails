Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :create, :index ]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :products, only: [ :index ]
  get '/categories', to: 'product_categories#index'
  get '/lists', to: 'product_lists#index'
  get '/lists/:id', to: 'product_lists#show'
  post '/lists/new', to: 'product_lists#create'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :events
  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
