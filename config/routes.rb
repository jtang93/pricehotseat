Rails.application.routes.draw do
  resources :items
  resources :players
  resources :games

  get '/game/:id/final', to: 'games#final', as: 'final_game'
  post '/game/:id/final', to: 'games#final'
  post '/rounds', to: 'rounds#create'
  post '/round', to: 'rounds#show'
  get '/round/:id', to: 'rounds#show'
  post '/choices', to: 'choices#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
