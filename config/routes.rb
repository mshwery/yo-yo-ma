Lists::Application.routes.draw do
  
  resources :s, controller: :stacks, as: :stacks do
    resources :lists do
      resources :tasks
    end
  end

  resources :a, controller: :users, as: :users do
    resources :lists do
      resources :tasks
    end
  end

  resources :lists, only: [:new] 

  root to: 'pages#home'

  match "/auth/:provider/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"
  #resources :identity
end
