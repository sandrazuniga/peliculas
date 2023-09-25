Rails.application.routes.draw do
  resources :documentaries
  resources :series
  resources :peliculas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "peliculas#index"
end
