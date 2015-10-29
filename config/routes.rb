Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: { registrations: "registrations" }
end
