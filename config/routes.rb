Rails.application.routes.draw do
  # Root route points to articles#index
  root "articles#index"

  # RESTful routes for articles
  resources :articles do
    resources :comments
  end

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check
end
