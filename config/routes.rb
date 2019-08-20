Rails.application.routes.draw do
  devise_for :users
  root to: 'arenas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :arenas do

    resources :bookings, only: :create
  end

end


