Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

  resources :home

  get 'get_restaurant', to: 'home#get_restaurant', as: 'get_rest'

  get 'get_suggestions', to: 'home#get_suggestions', as: 'get_sugg'

  resources :suggestions
end
