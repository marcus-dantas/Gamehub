Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
    resources :bookings, only: [:new, :create, :edit]

=======
  resources :games
>>>>>>> 466ea3c143077a5bdb17f776da419c513032d9af
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
