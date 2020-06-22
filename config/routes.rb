Rails.application.routes.draw do
  match '*path', :to => 'application#routing_error', via: [:post]
  get "/search" => 'businesses#search'
  
  resources :businesses do
  end
  
end
