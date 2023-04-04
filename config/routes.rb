Rails.application.routes.draw do
  
  resources :directors, only: [:new, :create, :show]
end
