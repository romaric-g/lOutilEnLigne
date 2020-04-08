Rails.application.routes.draw do
  resources :ateliers
  resources :items
  resources :events
  resources :places
  resources :users
  resources :tools
  resources :metiers
  resources :associations
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'root#index' 

end
