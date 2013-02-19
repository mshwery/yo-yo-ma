Lists::Application.routes.draw do
  
  resources :s, :controller => :stacks, :as => :stacks do
    resources :lists do
      resources :tasks
    end
  end

  resources :lists, :only => [:new, :create] 

  match "/preview", :to => "pages#preview"

  root :to => 'pages#home'

end
