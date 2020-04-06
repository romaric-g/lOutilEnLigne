Rails.application.routes.draw do
  resources :items
  resources :events
  resources :places
  resources :users
  resources :tools
  resources :metiers
  resources :associations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
