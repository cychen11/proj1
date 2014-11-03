Rails.application.routes.draw do
  root to: 'home#index'
  
  patch '/pokemons/capture', to: 'pokemons#capture', as: 'capture'
  patch 'damage', to: 'pokemons#damage'


  devise_for :trainers
  resources :trainers
end
