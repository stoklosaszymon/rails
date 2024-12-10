Rails.application.routes.draw do
  root to: 'application#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :create, :index ]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/auth", to: "sessions#authenticate"

  resources :products, only: [ :index , :create, :show ]
  delete 'products/:id', to: 'products#destroy'
  post 'products/:id', to: 'products#update'
  get '/categories', to: 'product_categories#index'

  post '/lists/remove', to: 'product_lists#remove'
  get '/lists', to: 'product_lists#index'
  get '/lists/:id', to: 'product_lists#show'
  delete '/lists/:id', to: 'product_lists#destroy'
  post '/lists/update/:id', to: 'product_lists#update_name'
  post '/lists/update_products/:id', to: 'product_lists#update_products'
  post '/lists/new', to: 'product_lists#create'
  post '/lists/duplicate', to: 'product_lists#duplicate'

  post '/lists', to: 'product_list_items#update'
  post '/list_items/update_quantity/:id', to: 'product_list_items#update_quantity'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :events
  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  get '*path', to: 'application#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end
end
