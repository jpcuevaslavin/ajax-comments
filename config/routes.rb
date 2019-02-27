Rails.application.routes.draw do
  resources :comments, only: %i[index create]
  root 'comments#index'
end
