Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tweets/about' => 'tweets#about'

  resources :tweets do
    resources :comments, only: [:create]
  end

  resources :reports do
    resources :messages, only: [:create]
  end

  root 'tweets#index'

  get 'maps/index'
    
  resources :maps, only: [:index]
end
