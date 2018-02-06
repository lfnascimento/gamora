Rails.application.routes.draw do

  root to: 'offers#index'

  resources :offers, only: [:index]

  namespace :staff do
    resources :offers do
      member do
        get 'disable'
        get 'enable'
      end
    end
  end

end
