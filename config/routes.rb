Rails.application.routes.draw do

  resources :mining_types
  # MOSTRA TODAS AS ROTAS
  # http://localhost:3000/rails/info/routes

  get 'welcome/index' #, to: 'welcome#index'

  resources :coins # 7 ROTAS (CRUD)


  root to: 'welcome#index'
end
