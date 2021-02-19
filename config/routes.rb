Rails.application.routes.draw do
  get 'login/sigin'
  get 'login/cadastrar'
  get 'login', to: 'login#login'
  post 'logar', to: 'login#logar'
  get '/logout', to: 'login#logout'
  get 'administrador/login', to: 'login_administrador#login'
  post 'administrador/logar', to: 'login_administrador#logar'
  get 'administrador/logout', to: 'login_administrador#logout'
  resources :usuarios, except: [:show]
  resources :administradors
  resources :reservas, only: [:index, :show, :destroy]
  resources :clientes
  resources :veiculos
  resources :marcas

  get 'loja/index', to: 'loja#index'
  get 'loja/locacao/:id', to: 'loja#aluguel'
  post 'alugar/:id', to: 'loja#alugar'
  get 'confirmacao_pagamento/:reserva_id', to: 'loja#confirmacao_pagamento'
  root 'loja#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
