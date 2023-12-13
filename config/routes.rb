Rails.application.routes.draw do
  resources :artworks, only: [:index]
  get 'random_artwork', to: 'artworks#show', as: 'random_artwork'
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
   root "homes#index"
end
