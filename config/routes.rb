Rails.application.routes.draw do
  get 'welcome/index'#, to: 'welcome#index'
  #get '/inicio', to: 'welcome#index'
  
  resources :coins # 7 rotas (CRUD)
  #get '/coins', to: 'coins#index'
  
  
  root to: 'welcome#index' 
end
