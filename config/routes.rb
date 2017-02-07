Rails.application.routes.draw do

  devise_for :users

  resources :pons do
    member do
      post '/repost' => 'pons#repost'
    end
  end


  get ':username' => 'users#show', as: 'user'

  root 'home#index'

end
