Rails.application.routes.draw do
  resources :trade_pack_components
  resources :trade_routes
  resources :trade_runs
  resources :trade_packs
  root 'main#main'
end
