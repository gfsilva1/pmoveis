Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'cozinha', to: 'cozinha#cozinha'
  get 'carne', to: 'carne#carne'
  resources :eletros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
