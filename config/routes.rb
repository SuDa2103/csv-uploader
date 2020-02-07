Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
    collection { post :import }
  end
end
