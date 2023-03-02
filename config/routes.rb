Rails.application.routes.draw do
  root to: "pages#home"
  resources :offers do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :bookings, only: [:show, :edit, :update]
end
