Rails.application.routes.draw do
  root to: 'raffles#index'
  resource :raffle_entries, only: [:create]
end
