Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers

  patch 'home/capture', to: "pokemons#capture", as: 'capture'
end
