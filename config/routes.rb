require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web, at: '/sidekiq'

  resources :posts do
    resources :comments
  end 
  devise_for :users, controllers: { registrations: "registrations" }
  root 'home#index'
end
