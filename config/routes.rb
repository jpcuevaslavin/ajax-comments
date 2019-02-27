Rails.application.routes.draw do
  resources :comments, only: %i[index create]
  
  resources :songs
  root 'songs#index'
end
