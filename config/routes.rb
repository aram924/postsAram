Rails.application.routes.draw do
  # Root route
  root 'main#index'

  # Match routes
  match 'about', to: 'main#about', via: 'get'


  # Resourceful routes
  resources :posts do
    member do
      get :delete
    end
  end

  resources :categories do
    member do
      get :delete
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
