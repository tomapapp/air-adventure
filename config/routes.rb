Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :adventures do
    resources :bookings, only: [:news, :create]
  end

  resources :bookings, only: [:destroy]
end
