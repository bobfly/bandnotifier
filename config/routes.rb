Rails.application.routes.draw do
  resources :gigs
  get 'past-gigs', to: "gigs#past_gigs", as: "past_gigs"
  get 'reports', to: "reports#index", as: "reports"
  devise_for :users
  root to: "dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
