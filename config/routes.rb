Rails.application.routes.draw do
  root to: 'raffles#index'
  get '/raffle_entries', to: redirect('/')
  resource :raffle_entries, only: [:create]
end
