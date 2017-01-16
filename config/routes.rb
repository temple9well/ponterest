Rails.application.routes.draw do
  resources :pons
  devise_for :users

  get ':username' => 'users#show', as: 'user'

  root 'home#index'

end
