Rails.application.routes.draw do
  
  resources :books
  resources :books do
    member do
      get 'delete', action: 'delete' # Adds a route for /books/:id/delete
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'
  
end
