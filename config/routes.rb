Rails.application.routes.draw do
  # match '*path', :to => 'application#routing_error', via: [:post]
  get "/businesses/search" => 'businesses#search'
  get "/" => 'businesses#index'
  
  resources :businesses do
  end
  
end
