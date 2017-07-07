Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :items do
    resources :tags
  end

  resources :items do
    resources :reviews
  end

  resources :users do
    resources :reviews
  end
end
