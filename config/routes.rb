Rails.application.routes.draw do
  root 'mems#index'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :mems do
    collection do
    get 'my'
    get 'inactive'
    end
end
end
