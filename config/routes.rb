Rails.application.routes.draw do
  resources :directors, only: %i[new create show edit update]

  resources :movie_genres, only: %i[new create show edit update]

  resources :movies, only: %i[new create show edit update]
end
