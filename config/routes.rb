Rails.application.routes.draw do
  root 'main#main'

  resources :components
  resources :trade_routes
  resources :trade_runs

  resources :trade_packs, except: [:new]
  post 'trade_packs/new', as: :new_trade_pack

  post 'full_process/new', as: :new_full_process_path
end
