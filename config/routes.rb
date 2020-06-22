Rails.application.routes.draw do
  # match '*path', :to => 'application#routing_error', via: [:post]
  get "/businesses/search" => 'businesses#search'
  get "/" => 'businesses#index'
  get "/businesses/random" => 'businesses#random'
  resources :businesses do
  end
  
end
