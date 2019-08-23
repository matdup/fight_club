Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "/dashboard", to: "users#dashboard"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :arenas do
    resources :bookings, only: :create # [:new, :create, :index]
    #resources :users, only: :dashboard
  end

  resources :bookings, only: [:show] do
    member do
      patch :accept
      patch :decline
    end
  end

  # put "bookings/:id/accept", to: "bookings#accept", as: :accept
  # put "bookings/:id/decline", to: "bookings#decline", as: :decline

end
