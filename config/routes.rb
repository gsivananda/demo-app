Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "visa_details#index"
  resources :visa_details, only: [:new, :create, :index]
  resources :users
end
