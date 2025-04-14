Rails.application.routes.draw do
 
  devise_for :users

  resources :friends_lists
 
 
  get "dashboard/index"
 



  authenticated :user do
    root to: 'dashboard#index', as: :authenticated_root
  end
  
  unauthenticated do
    root to: 'home#index', as: :unauthenticated_root
  end
  #root "friends_lists#index"
  get "home/about"
  get "up" => "rails/health#show", as: :rails_health_check

  

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end