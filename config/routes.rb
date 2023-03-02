Rails.application.routes.draw do
  root to: "pages#home"
  resources :offers do
    resources :bookings, only: [:show, :new, :create]
  end
end
