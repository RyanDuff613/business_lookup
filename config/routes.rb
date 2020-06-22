Rails.application.routes.draw do
  resources :businesses do
  end
  match '*path', :to => 'application#routing_error', via: [:post]
  get "/search" => 'businesses#search'
  
end
