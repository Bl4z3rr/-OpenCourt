Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :games  do
    resources :bookings
  end
  resources :bookings, only: :destroy
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
