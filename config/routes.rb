Rails.application.routes.draw do
  resources :pons
  devise_for :users
  root 'home#index'

end
