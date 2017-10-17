Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"

 ## Part 2: Create a new route in your routes file that will call the function you just wrote. Name the path capture as its prefix. Set the URI pattern to be "capture".

  patch '/capture', to: 'pokemons#capture', as: 'capture'

  ## Part 3: You should redirect back to the trainer's profile page at the end of the damage method. Hint: run rake routes to see what path you need.

  patch '/damaga', to: 'pokemons#damage', as: 'damage'

  ##  Part 5: create new Pokemon.
  post 'create', to: 'pokemons#create', as: 'create'

  get 'new', to: 'pokemons#new', as: 'new'

  resources :trainers
  resources :pokemons

end
