Rails.application.routes.draw do
  
  resources :directors, only: [:new, :create, :show]

  resources :movie_genres, only: [:new, :create, :show] 
end
