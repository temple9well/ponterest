Rails.application.routes.draw do

  devise_for :users

  resources :pons do
    member do
      post '/repost' => 'pons#repost'
    end

    member do
      post '/like' => 'pons#like'
    end
  end


  get ':username' => 'users#show', as: 'user'

  root 'home#index'

end
