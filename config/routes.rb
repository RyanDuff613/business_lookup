Rails.application.routes.draw do
  resources :businesses
  match '*path', :to => 'application#routing_error', via: [:post]
  get "/businesses/search"
end
